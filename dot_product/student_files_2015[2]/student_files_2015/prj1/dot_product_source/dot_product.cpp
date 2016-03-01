////////////////////////////////////////////////////////////////////////////////
//  _____                           _       _    _____      _ _
// |_   _|                         (_)     | |  / ____|    | | |
//   | |  _ __ ___  _ __   ___ _ __ _  __ _| | | |     ___ | | | ___  __ _  ___
//   | | | '_ ` _ \| '_ \ / _ \ '__| |/ _` | | | |    / _ \| | |/ _ \/ _` |/ _ \
//  _| |_| | | | | | |_) |  __/ |  | | (_| | | | |___| (_) | | |  __/ (_| |  __/
// |_____|_| |_| |_| .__/ \___|_|  |_|\__,_|_|  \_____\___/|_|_|\___|\__, |\___|
//                 | |                                                __/ |
//                 |_|                                               |___/
//  _                     _
// | |                   | |
// | |     ___  _ __   __| | ___  _ __
// | |    / _ \| '_ \ / _` |/ _ \| '_ \
// | |___| (_) | | | | (_| | (_) | | | |
// |______\___/|_| |_|\__,_|\___/|_| |_|
//
////////////////////////////////////////////////////////////////////////////////
//  File:           dot_product.cpp
//  Description:    dot product calculator
//  By:             rad09
////////////////////////////////////////////////////////////////////////////////

#include "dot_product.h"
#include "stdio.h"

#pragma design top
void dot_product(ac_int<8> *input_a, ac_int<8> *input_b, ac_int<8> *output) {
  ac_int<8> acc = 0;
  int i; 

  MAC: for(i = 0; i < VECTOR_LEN; i++) {
    acc += input_a[i] * *(input_b + i); 
    /* you can access the values in the vector in either way: var[i] = *(var + i) */
  }
  *output = acc;
}


// end of file