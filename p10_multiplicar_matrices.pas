program MultiplicarMatrices;
uses crt;

const
  MAX = 20;  

var
  r1, c1, r2, c2, i, j, k: integer;
  A, B, C: array[1..MAX, 1..MAX] of integer;

begin
  clrscr;
  write('Ingrese dimensiones de A (r1 c1): ');
  readln(r1, c1);
  write('Ingrese dimensiones de B (r2 c2): ');
  readln(r2, c2);

  if (r1 <= 0) or (c1 <= 0) or (r2 <= 0) or (c2 <= 0) then
  begin
    writeln('Dimensiones deben ser positivas.');
    halt(0);
  end;

  if c1 <> r2 then
  begin
    writeln('No se puede multiplicar: c1 debe ser igual a r2.');
    halt(0);
  end;

  writeln('Ingrese la matriz A:');
  for i := 1 to r1 do
    for j := 1 to c1 do
    begin
      write('A[', i, ',', j, ']= ');
      readln(A[i, j]);
    end;

  writeln('Ingrese la matriz B:');
  for i := 1 to r2 do
    for j := 1 to c2 do
    begin
      write('B[', i, ',', j, ']= ');
      readln(B[i, j]);
    end;

  for i := 1 to r1 do
    for j := 1 to c2 do
      C[i, j] := 0;

  
  for i := 1 to r1 do
    for j := 1 to c2 do
      for k := 1 to c1 do
        C[i, j] := C[i, j] + A[i, k] * B[k, j];

  
  writeln;
  writeln('Resultado C = A x B:');
  for i := 1 to r1 do
  begin
    for j := 1 to c2 do
      write(C[i, j]:8);
    writeln;
  end;

  readln;
end.
