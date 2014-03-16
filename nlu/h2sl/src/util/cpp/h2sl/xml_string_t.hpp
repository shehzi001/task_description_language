/** THIS IS AN AUTOMATICALLY GENERATED FILE.  DO NOT MODIFY
 * BY HAND!!
 *
 * Generated by lcm-gen
 **/

#include <lcm/lcm_coretypes.h>

#ifndef __h2sl_xml_string_t_hpp__
#define __h2sl_xml_string_t_hpp__

#include <string>

namespace h2sl
{

class xml_string_t
{
    public:
        int64_t    utime;
        std::string xml;

    public:
        inline int encode(void *buf, int offset, int maxlen) const;
        inline int getEncodedSize() const;
        inline int decode(const void *buf, int offset, int maxlen);
        inline static int64_t getHash();
        inline static const char* getTypeName();

        // LCM support functions. Users should not call these
        inline int _encodeNoHash(void *buf, int offset, int maxlen) const;
        inline int _getEncodedSizeNoHash() const;
        inline int _decodeNoHash(const void *buf, int offset, int maxlen);
        inline static int64_t _computeHash(const __lcm_hash_ptr *p);
};

int xml_string_t::encode(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;
    int64_t hash = getHash();

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &hash, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = this->_encodeNoHash(buf, offset + pos, maxlen - pos);
    if (tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int xml_string_t::decode(const void *buf, int offset, int maxlen)
{
    int pos = 0, thislen;

    int64_t msg_hash;
    thislen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &msg_hash, 1);
    if (thislen < 0) return thislen; else pos += thislen;
    if (msg_hash != getHash()) return -1;

    thislen = this->_decodeNoHash(buf, offset + pos, maxlen - pos);
    if (thislen < 0) return thislen; else pos += thislen;

    return pos;
}

int xml_string_t::getEncodedSize() const
{
    return 8 + _getEncodedSizeNoHash();
}

int64_t xml_string_t::getHash()
{
    static int64_t hash = _computeHash(NULL);
    return hash;
}

const char* xml_string_t::getTypeName()
{
    return "xml_string_t";
}

int xml_string_t::_encodeNoHash(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &this->utime, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    char* xml_cstr = (char*) this->xml.c_str();
    tlen = __string_encode_array(buf, offset + pos, maxlen - pos, &xml_cstr, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int xml_string_t::_decodeNoHash(const void *buf, int offset, int maxlen)
{
    int pos = 0, tlen;

    tlen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &this->utime, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    int32_t __xml_len__;
    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &__xml_len__, 1);
    if(tlen < 0) return tlen; else pos += tlen;
    if(__xml_len__ > maxlen - pos) return -1;
    this->xml.assign(((const char*)buf) + offset + pos, __xml_len__ - 1);
    pos += __xml_len__;

    return pos;
}

int xml_string_t::_getEncodedSizeNoHash() const
{
    int enc_size = 0;
    enc_size += __int64_t_encoded_array_size(NULL, 1);
    enc_size += this->xml.size() + 4 + 1;
    return enc_size;
}

int64_t xml_string_t::_computeHash(const __lcm_hash_ptr *)
{
    int64_t hash = 0xea923cbcf3bb4154LL;
    return (hash<<1) + ((hash>>63)&1);
}

}

#endif