      SUBROUTINE XERBLA( SRNAME, INFO )
*
*  -- LAPACK auxiliary routine, modified for R --
*     Returns silently to avoid interrupting the R session.
*     SRNAME: routine name, INFO: invalid parameter position.
*
*     .. Scalar Arguments ..
      CHARACTER*6        SRNAME
      INTEGER            INFO
*     ..
*
* =====================================================================
*
*     .. Executable Statements ..
*
*     Use arguments to suppress compiler warnings, then return.
      IF( INFO .LT. 0 .AND. SRNAME .EQ. SRNAME ) RETURN
*
      RETURN
*
*     End of XERBLA
*
      END
