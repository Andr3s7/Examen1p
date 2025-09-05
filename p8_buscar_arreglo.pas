program BuscarArreglo;
uses crt;

const
  MAX = 100;

procedure Ordenar(var arr: array of integer; n: integer);
var
  i, j, key: integer;
begin
  for i := 2 to n do
  begin
    key := arr[i];
    j := i - 1;
    while (j > 0) and (arr[j] > key) do
    begin
      arr[j+1] := arr[j];
      dec(j);
    end;
    arr[j+1] := key;
  end;
end;

function BusquedaBinaria(var arr: array of integer; n, x: integer): integer;
var
  l, r, m: integer;
begin
  l := 1; r := n;
  BusquedaBinaria := -1;
  while l <= r do
  begin
    m := (l + r) div 2;
    if arr[m] = x then
    begin
      BusquedaBinaria := m;
      exit;
    end
    else if arr[m] < x then
      l := m + 1
    else
      r := m - 1;
  end;
end;

var
  arr, arrOrdenado: array[1..MAX] of integer;
  n, i, objetivo, pos, posBin: integer;

begin
  clrscr;
  write('Ingrese el tamaño del arreglo (max 100): ');
  readln(n);

  writeln('Ingrese ', n, ' enteros:');
  for i := 1 to n do
    readln(arr[i]);

  write('Ingrese el valor a buscar: ');
  readln(objetivo);

  pos := -1;
  for i := 1 to n do
    if arr[i] = objetivo then
    begin
      pos := i;
      break;
    end;

  if pos <> -1 then
    writeln('(No ordenado): encontrado en posición ', pos)
  else
    writeln('(No ordenado): no encontrado');

  for i := 1 to n do
    arrOrdenado[i] := arr[i];
  Ordenar(arrOrdenado, n);

  posBin := BusquedaBinaria(arrOrdenado, n, objetivo);
  if posBin <> -1 then
    writeln('(Ordenado): encontrado en posición ', posBin)
  else
    writeln('(Ordenado): no encontrado');

  writeln('Arreglo ordenado: ');
  for i := 1 to n do
    write(arrOrdenado[i], ' ');
  readln;
end.
