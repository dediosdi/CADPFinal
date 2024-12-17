program final1;

type
  venta = record
    nroVenta: integer;
    cantProductos: integer;
    tipodePago: boolean;
  end;

  lista = ^nodo;
  nodo = record
    dato: venta;
    sig: lista;
  end;

function cumple(numero: integer): boolean;
var
  dig: integer;
  cantP, cantI: integer;
  verdadero: boolean;
begin
  cantI := 0;
  cantP := 0;
  while (numero <> 0) do begin
    dig := numero mod 10;
    if (dig mod 2 = 0) then
      cantP := cantP + 1
    else
      cantI := cantI + 1;
    numero := numero div 10;
  end;

  if (cantP > cantI) then 
    verdadero := true;
    
  if (verdadero = true) then 
    cumple := true;
end;

procedure CargarLista(var L: lista);
var
  aux: lista;
  nroV, cantP: integer;
  mdP: boolean;
  i: integer;
begin
  for i := 1 to 30 do begin
    nroV := Random(100);
    cantP := Random(100);
    mdP := Random(2) = 1;
    new(aux);
    aux^.dato.nroVenta := nroV;
    aux^.dato.cantProductos := cantP;
    aux^.dato.tipodePago := mdP;
    aux^.sig := L;
    L := aux;
  end;
end;

procedure insertarOrdenado(var l: lista; V: venta);
var
  nue, act, ant: lista;
begin
  new(nue);
  nue^.dato := V;
  act := l;
  ant := l;
  while (act <> nil) and (act^.dato.tipodePago < V.tipodePago) do begin
    ant := act;
    act := act^.sig;
  end;
  
  if (act = ant) then
    L := nue
  else
    ant^.sig := nue;
  
  nue^.sig := act;
end;

procedure RecorrerLista(L1: lista; var L2: lista);
begin
  while (L1 <> nil) do begin
    if cumple(L1^.dato.cantProductos) then
      insertarOrdenado(L2, L1^.dato);
    L1 := L1^.sig;
  end;
end;

procedure ImprimirLista(L: lista);
begin
  while (L <> nil) do begin
    writeln(L^.dato.nroVenta);
    writeln(L^.dato.cantProductos);
    writeln(L^.dato.tipodePago);
    L := L^.sig;
  end;
end;

var
  L1: lista; 
  L2: lista;

begin
  L1 := nil;
  L2 := nil;
  Randomize;
  CargarLista(L1); //se dispone pero a modo de prueba la cargo con 30 elementos
  RecorrerLista(L1, L2);
  ImprimirLista(L2);
  readln;
end.
