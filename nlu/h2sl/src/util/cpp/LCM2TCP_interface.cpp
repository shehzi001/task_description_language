#include <stdio.h>
#include <lcm/lcm-cpp.hpp>
#include "h2sl/xml_string_t.hpp"
#include "h2sl/constraint_set_t.hpp"
#include "h2sl/constraint_set.h"
#include "h2sl/gui_lcm.h"

#include "h2sl/region.h"
#include "h2sl/constraint.h"
#include "h2sl/gui.h"

#include <iostream>

#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <arpa/inet.h>

#define PORTNUM 5004

bool connected;
using namespace std;
using namespace lcm;
using namespace h2sl;

class Handler 
{
    public:
         Handler()
         {
				  close(sockfd);  
          sockfd = 0;
          memset(sendBuff, '0' ,sizeof(sendBuff));
					if((sockfd = socket(AF_INET, SOCK_STREAM, 0))< 0)
						{
							printf("\n Error : Could not create socket \n");
						}
					else
						{
						serv_addr.sin_family = AF_INET;
						serv_addr.sin_port = htons(5004);
						serv_addr.sin_addr.s_addr = inet_addr("127.0.0.1");
					 
						if(connect(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr))<0)
							{
								printf("\n Error : Connect Failed \n");
							}
					  }
         }
         
        ~Handler() 
           {
            close(sockfd);  
           }

        /*
         * listening messages from ASR
         * 
         */
        
        void _receive_speech(const lcm::ReceiveBuffer* buf, 
                const std::string& channel, 
                const h2sl::xml_string_t * msg )
        {
               std::cout << "GOT TEXT:" << msg->xml << std::endl;
               char *cstr = new char[msg->xml.length() + 1];
               strcpy(cstr, msg->xml.c_str());
              
               write(sockfd, cstr, strlen(cstr));
               delete [] cstr;
        }
        
        /*
         * listening inferred structured language from NLU component
         * 
         */
        void on_lcm_message( const lcm::ReceiveBuffer *rbuf,
                         const std::string &channel) 
        {
         int decode_status = -1;

         // An h2sl_constraint_set_t message
         h2sl::constraint_set_t constraint_set_msg;
         decode_status = constraint_set_msg.decode (rbuf->data, 0, rbuf->data_size);
         if (decode_status >= 0)
         {
            Constraint_Set constraint_set;
            GUI_LCM::constraint_set_from_constraint_set_t( constraint_set, constraint_set_msg );
            cout << "constraint_set: " << constraint_set << endl;
         }
        }
        
        void send_comm()
        {
         strcpy(sendBuff, "{\"frame\":\"motion\", \"frame_elements\":{\"goal\":\"to the kitchen\"}}");
         write(sockfd, sendBuff, strlen(sendBuff));
        }
        
   private:
     int sockfd;
     char sendBuff[1024];
     string senddata;
     struct sockaddr_in serv_addr;    
};

void error(char *msg)
{
    perror(msg);
    exit(1);
}



int main(int argc, char** argv)
{
    lcm::LCM lcm;
    connected = false;
    if(!lcm.good())
        return 1;

    Handler handlerObject;
    //lcm.subscribe("EXAMPLE", &Handler::handleMessage, &handlerObject);
    lcm.subscribe( "SPEECH_RECOGNITION_OUTPUT", &Handler::_receive_speech, &handlerObject);
    lcm.subscribe("CONSTRAINT_SET",  &Handler::on_lcm_message, &handlerObject );
    cout << "Wait for the message "<< endl;
    
     //handlerObject.send_comm();
   
    while(0 == lcm.handle());
    return 0;
}
