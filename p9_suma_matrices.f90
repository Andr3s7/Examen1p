PROGRAM SUMA_MATRICES
  IMPLICIT NONE
  INTEGER :: R, C, I, J
  INTEGER, DIMENSION(20,20) :: A, B, S

  PRINT *, 'Ingrese filas y columnas (r c, max 20 20):'
  READ *, R, C

  IF (R <= 0 .OR. C <= 0 .OR. R > 20 .OR. C > 20) THEN
     PRINT *, 'Error: dimensiones deben ser positivas y <= 20'
     STOP
  END IF

  PRINT *, 'Ingrese la matriz A:'
  DO I = 1, R
     PRINT *, 'Fila ', I, ':'
     DO J = 1, C
        READ *, A(I,J)
     END DO
  END DO

  PRINT *, 'Ingrese la matriz B:'
  DO I = 1, R
     PRINT *, 'Fila ', I, ':'
     DO J = 1, C
        READ *, B(I,J)
     END DO
  END DO

  DO I = 1, R
     DO J = 1, C
        S(I,J) = A(I,J) + B(I,J)
     END DO
  END DO

  PRINT *, 'Resultado S = A + B:'
  DO I = 1, R
     DO J = 1, C
        WRITE(*, '(I8)', ADVANCE='NO') S(I,J)
     END DO
     PRINT *
  END DO

  PRINT *, 'Presione ENTER para finalizar'
  READ *

END PROGRAM SUMA_MATRICES
