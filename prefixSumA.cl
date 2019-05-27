__kernel void prefixSumA(__global const unsigned int *_element,
                         __global unsigned int *_pps,
                         __global unsigned int *_offSet) {

       int global_id = get_global_id(0);
       size_t pos = ITERATOR * global_id;
       for (unsigned int i=0; i<ITERATOR; i++){
            if(i==0){
                _pps[pos+i]=_element[pos+i];
            }
           else{
                _pps[pos+i]=_pps[pos+i-1]+_element[pos+i];
           }
       }
       _offSet[global_id]=_pps[pos+ITERATOR-1];
}