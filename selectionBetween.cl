__kernel void selectionBetween(   __global unsigned int* data,
                           __global unsigned int* bitmap,
                           unsigned int c1,
                           unsigned int c2){

    size_t pos = ITERATOR * get_global_id(0);
    unsigned int bm = 0;
    for (unsigned int i=0; i<ITERATOR; ++i){
        bitmap[i+pos] = ((c1 <= data[pos+i]) & (data[pos+i] <= c2))  ? 1 : 0;
    }
}