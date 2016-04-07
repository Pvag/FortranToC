! ALWAYS REMEMBER !
! FORTRAN substitutes lower case letters everywhere!
! Avoid calling c code (functions and variables) with upper
! cased letters, at least for the code that is going to interact
! with the fortran code!

program driver
  implicit none
  ! create an array of integers
  integer, parameter :: m = 2, n = 3
  integer, dimension(m,n) :: nums
  nums = reshape((/1, 10, 2, 20, 3, 30/),shape(nums))
  print *, " Array nums before the GPU operates on it: ", nums
!  print *, "nums(1,1): ", nums(1,1)
!  print *, "nums(2,1): ", nums(2,1)

  ! pass it to the CUDA C driver 
  call driver_c(nums, m, n)

  ! print the array after the CUDA kernel has been executed
!  print *, " Array nums AFTER  the GPU operated on it: ", nums
end program driver
