      double precision function dnrm2(n, dx, incx)
c
c  Euclidean norm of a vector dx of length n with storage increment incx.
c  Replaced the original ASSIGN/assigned-GOTO version (deleted in Fortran 2018)
c  with a standard scaled accumulator algorithm.
c
      integer n, incx, ix
      double precision dx(*), scale, ssq, absxi, zero, one
      parameter (zero = 0.0d0, one = 1.0d0)
c
      if (n .lt. 1 .or. incx .lt. 1) then
         dnrm2 = zero
         return
      end if
      if (n .eq. 1) then
         dnrm2 = dabs(dx(1))
         return
      end if
c
      scale = zero
      ssq   = one
      ix = 1
   10 if (ix .le. 1 + (n-1)*incx) then
         if (dx(ix) .ne. zero) then
            absxi = dabs(dx(ix))
            if (scale .lt. absxi) then
               ssq   = one + ssq * (scale/absxi)**2
               scale = absxi
            else
               ssq = ssq + (absxi/scale)**2
            end if
         end if
         ix = ix + incx
         go to 10
      end if
      dnrm2 = scale * dsqrt(ssq)
      return
      end
