program buscar_arreglo
  implicit none
  integer n, i, target, pos, pos_bin
  integer arr(100), arr_sorted(100)
  logical found

  print *, 'Ingrese el tama¤o del arreglo (max 100):'
  read *, n
  if (n <= 0 .or. n > 100) then
     print *, 'Error: n debe ser positivo y <= 100'
     stop
  end if

  print *, 'Ingrese ', n, ' enteros:'
  do i = 1, n
     read *, arr(i)
  end do

  print *, 'Ingrese el valor a buscar:'
  read *, target

  found = .false.
  pos = -1
  do i = 1, n
     if (arr(i) == target) then
        found = .true.
        pos = i
        exit
     end if
  end do

  if (found) then
     print *, '(no ordenado): encontrado en posición ', pos
  else
     print *, '(no ordenado): no encontrado'
  end if


  do i = 1, n
     arr_sorted(i) = arr(i)
  end do
  call sort_inplace(arr_sorted, n)

    pos_bin = binary_search(arr_sorted, n, target)
  if (pos_bin /= -1) then
     print *, '(arreglo ordenado): encontrado en posición ', pos_bin
  else
     print *, '(arreglo ordenado): no encontrado'
  end if


  print *, 'Arreglo ordenado:'
  do i = 1, n
     write(*,'(I5)', advance='no') arr_sorted(i)
  end do
  print *

  pause 'Presione ENTER para finalizar el programa'

contains

  subroutine sort_inplace(a, n)
    integer a(*), n
    integer i, j, key
    do i = 2, n
       key = a(i)
       j = i - 1
       do while (j >= 1 .and. a(j) > key)
          a(j+1) = a(j)
          j = j - 1
       end do
       a(j+1) = key
    end do
  end subroutine sort_inplace

  integer function binary_search(a, n, x)
    integer a(*), n, x
    integer l, r, m
    l = 1
    r = n
    binary_search = -1
    do while (l <= r)
       m = (l + r) / 2
       if (a(m) == x) then
          binary_search = m
          return
       else if (a(m) < x) then
          l = m + 1
       else
          r = m - 1
       end if
    end do
  end function binary_search

end program buscar_arreglo

