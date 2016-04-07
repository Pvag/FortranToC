forCU : driver_c.o driver.o
	gfortran -o forCU driver_c.o driver.o -L /usr/local/cuda/lib -I /usr/local/cuda/include -lcuda -lcudart

driver.o : driver.f90
	gfortran -c driver.f90

driver_c.o: driver_c.cu
	nvcc -c driver_c.cu

clean:
	rm *.o forCU
