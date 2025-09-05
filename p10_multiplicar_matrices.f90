      PROGRAM MULTIPLICACION_MATRICES
      INTEGER R1, C1, R2, C2, I, J, K
      INTEGER A(100), B(100), C(100)
      PRINT *, 'Ingrese dimensiones de A (r1 c1):'
      READ *, R1, C1
      PRINT *, 'Ingrese dimensiones de B (r2 c2):'
      READ *, R2, C2

      IF (R1.LE.0 .OR. C1.LE.0 .OR. R2.LE.0 .OR. C2.LE.0) THEN
         PRINT *, 'Dimensiones deben ser positivas'
         STOP
      END IF
      IF (C1.NE.R2) THEN
         PRINT *, 'No se puede multiplicar: c1 debe ser igual a r2'
         STOP
      END IF


      DO I=1,R1
         DO J=1,C2
            C((I-1)*10+J) = 0
         END DO
      END DO

      PRINT *, 'Ingrese la matriz A:'
      DO I=1,R1
         DO J=1,C1
            READ *, A((I-1)*10+J)
         END DO
      END DO

      PRINT *, 'Ingrese la matriz B:'
      DO I=1,R2
         DO J=1,C2
            READ *, B((I-1)*10+J)
         END DO
      END DO

      DO I=1,R1
         DO J=1,C2
            DO K=1,C1
               C((I-1)*10+J) = C((I-1)*10+J) + A((I-1)*10+K) * B((K-1)*10+J)
            END DO
         END DO
      END DO

      PRINT *, 'Resultado C = A x B:'
      DO I=1,R1
         DO J=1,C2
            WRITE(*,999) C((I-1)*10+J)
         END DO
         PRINT *
      END DO

      PAUSE 'Presione ENTER para finalizar'

  999  FORMAT(I8)

      END

