#include <stdio.h>
#include "common.h"

__global__ void times(int *d_nums, int t);
extern "C" void driver_c_(int *nums, int *m, int *n);

extern "C" void driver_c_(int *nums, int *m, int *n) {
  // 1D stuff
//  dim3 grid( 1 );
//  dim3 block( *n ); 

//  const int arr_size = *n*sizeof(int);

//  int *d_nums;
//  CHECK(cudaMalloc((void **)&d_nums, arr_size));
//
//  CHECK(cudaMemcpy(d_nums, nums, arr_size, cudaMemcpyHostToDevice));
//  times<<<grid, block>>>(d_nums, 2);
//  CHECK(cudaMemcpy(nums, d_nums, arr_size, cudaMemcpyDeviceToHost));
//
//  CHECK(cudaFree(d_nums));

  printf("nums[0]: \n", nums[0]);

}

__global__
void times(int *d_nums, int t) {
  int i = threadIdx.x;
  d_nums[i] = t*d_nums[i];
}
