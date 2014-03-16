/** THIS IS AN AUTOMATICALLY GENERATED FILE.  DO NOT MODIFY
 * BY HAND!!
 *
 * Generated by lcm-gen
 **/

#include <lcm/lcm_coretypes.h>

#ifndef __h2sl_object_set_t_hpp__
#define __h2sl_object_set_t_hpp__

#include <vector>
#include "h2sl/object_t.hpp"

namespace h2sl
{

class object_set_t
{
    public:
        int32_t    num_objects;
        std::vector< h2sl::object_t > objects;

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

int object_set_t::encode(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;
    int64_t hash = getHash();

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &hash, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = this->_encodeNoHash(buf, offset + pos, maxlen - pos);
    if (tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int object_set_t::decode(const void *buf, int offset, int maxlen)
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

int object_set_t::getEncodedSize() const
{
    return 8 + _getEncodedSizeNoHash();
}

int64_t object_set_t::getHash()
{
    static int64_t hash = _computeHash(NULL);
    return hash;
}

const char* object_set_t::getTypeName()
{
    return "object_set_t";
}

int object_set_t::_encodeNoHash(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;

    tlen = __int32_t_encode_array(buf, offset + pos, maxlen - pos, &this->num_objects, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    for (int a0 = 0; a0 < this->num_objects; a0++) {
        tlen = this->objects[a0]._encodeNoHash(buf, offset + pos, maxlen - pos);
        if(tlen < 0) return tlen; else pos += tlen;
    }

    return pos;
}

int object_set_t::_decodeNoHash(const void *buf, int offset, int maxlen)
{
    int pos = 0, tlen;

    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &this->num_objects, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    this->objects.resize(this->num_objects);
    for (int a0 = 0; a0 < this->num_objects; a0++) {
        tlen = this->objects[a0]._decodeNoHash(buf, offset + pos, maxlen - pos);
        if(tlen < 0) return tlen; else pos += tlen;
    }

    return pos;
}

int object_set_t::_getEncodedSizeNoHash() const
{
    int enc_size = 0;
    enc_size += __int32_t_encoded_array_size(NULL, 1);
    for (int a0 = 0; a0 < this->num_objects; a0++) {
        enc_size += this->objects[a0]._getEncodedSizeNoHash();
    }
    return enc_size;
}

int64_t object_set_t::_computeHash(const __lcm_hash_ptr *p)
{
    const __lcm_hash_ptr *fp;
    for(fp = p; fp != NULL; fp = fp->parent)
        if(fp->v == object_set_t::getHash)
            return 0;
    const __lcm_hash_ptr cp = { p, (void*)object_set_t::getHash };

    int64_t hash = 0x8d1382d77ac776e7LL +
         h2sl::object_t::_computeHash(&cp);

    return (hash<<1) + ((hash>>63)&1);
}

}

#endif
