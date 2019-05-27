__kernel void finalJoin(__global const unsigned int *_data,
                        __global const unsigned int *_bm,
                        __global const unsigned int *_fps,
                        __global unsigned int *_joinResult) {

       int global_id = get_global_id(0);
       size_t pos = ITERATOR * global_id;

       for (unsigned int i=0; i<ITERATOR; i++){
            if(_bm[pos+i] == 1){
                _joinResult[_fps[pos+i]-1] = _data[pos+i];
            }
       }

}