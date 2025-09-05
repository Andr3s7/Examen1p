program SumaMatrices;
uses crt;

const
  MAX = 20;  
var
  r, c, i, j: integer;
  A, B, d: array[1..MAX, 1..MAX] of integer;

begin
  clrscr;
  write('Ingrese filas y columnas (r c, max ', MAX, '): ');
  readln(r, c);

  if (r <= 0) or (c <= 0) or (r > MAX) or (c > MAX) then
  begin
    writeln('Dimensiones no validas. Deben ser entre 1 y ', MAX);
    halt(0);
  end;

  writeln('Ingrese la matriz A:');
  for i := 1 to r do
    for j := 1 to c do
    begin
      write('A[', i, ',', j, ']= ');
      readln(A[i, j]);
    end;

  writeln('Ingrese la matriz B:');
  for i := 1 to r do
    for j := 1 to c do
    begin
      write('B[', i, ',', j, ']= ');
      readln(B[i, j]);
    end;

  for i := 1 to r do
    for j := 1 to c do
      d[i, j] := A[i, j] + B[i, j];

  writeln;
  writeln('Resultado C = A + B:');
  for i := 1 to r do
  begin
    for j := 1 to c do
      write(d[i, j]:8);
    writeln;
  end;

  readln;
end.
