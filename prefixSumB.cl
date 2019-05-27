__kernel void prefixSumB(__global const unsigned int *_pps,
                         __global const unsigned int *_offset,
                         __global unsigned int *_fps) {

       int global_id = get_global_id(0);
       size_t pos = ITERATOR * global_id;

       for (unsigned int i=0; i<ITERATOR; i++){
            if(global_id!=0){
                _fps[pos+i]=_pps[pos+i]+_offset[global_id-1];
            }else{
                _fps[pos+i]=_pps[pos+i];
            }
       }

}