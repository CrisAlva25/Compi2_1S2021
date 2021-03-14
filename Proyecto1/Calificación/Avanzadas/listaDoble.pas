program listaDoble;

type
Points = object
var right : integer;
var left : integer;
end;

type
Node = object
var idx : integer;
var val : integer;
var point : Points;
end;

type
DoubleList = array[0..20] of Node;

var actualDL : DoubleList;
var count : integer = 0;
var first : integer = -1;
var last : integer = -1;

procedure InsertFirst(val : integer);
var root : Node;
var aux : Node;
begin
    if (first <> -1) then
    begin
        aux := actualDL[first];
        
        first := count;

        root.idx := count;
        root.val := val;
        root.point.left := -1;
        root.point.right := aux.idx;

        aux.point.left := root.idx;
        actualDL[aux.idx] := aux;
    end
    else
    begin
        first := count;
        last := first;
        
        root.idx := count;
        root.val := val;
        root.point.left := -1;
        root.point.right := -1;
    end;
    actualDL[count] := root;
    count := count + 1;
end;

procedure InsertLast(val : integer);
    var root : Node;
    var aux : Node;
    begin
        if (first <> -1) then
        begin
            aux := actualDL[last];

            last := count;

            root.idx := count;
            root.val := val;
            root.point.left := aux.idx;
            root.point.right := -1;

            aux.point.right := root.idx;
            actualDL[aux.idx] := aux;
        end
        else
        begin
            first := count;
            last := first;
            
            root.idx := count;
            root.val := val;
            root.point.left := -1;
            root.point.right := -1;
        end;
        actualDL[count] := root;
        count := count + 1;
end;

procedure InsertInto(val, pos : integer);
var root : Node;
var aux : Node;
var newNode : Node;
var i : integer = 0;
begin
    if (first = -1) or (pos = 0) then
    begin
        InsertFirst(val);
    end
    else if ((count - 1) = pos) then
    begin
        InsertLast(val);
    end
    else
    begin
        root := actualDL[first];
        aux.idx := -1;

        repeat
            aux := root;
            root := actualDL[root.point.right];
            i := i + 1;
        until (i <> pos);
        newNode.idx := count;
        newNode.val := val;
        newNode.point.left := aux.idx;
        newNode.point.right := root.idx;

        aux.point.right := newNode.idx;
        actualDL[aux.idx] := aux;

        root.point.left := newNode.idx;
        actualDL[root.idx] := root;

        actualDL[count] := newNode;
        count := count + 1;
    end;
end;

procedure PrintListNormal();
var actual : Node;
var i : integer;
begin
    if (first <> -1) then
    begin
        i := first;
        repeat
            actual := actualDL[i];
            write('Valor de nodo: ');
            writeln(actual.val);
            i := actual.point.right;
        until (actual.idx = last);
    end;
end;

procedure PrintListback();
var actual : Node;
var i : integer;
begin
    if (first <> -1) then
    begin
        i := last;
        repeat
            actual := actualDL[i];
            write('Valor de nodo: ');
            writeln(actual.val);
            i := actual.point.left;
        until (actual.idx = first);
    end;
end;

begin
    writeln('---Insertando al inicio---');
    InsertFirst(5);
    InsertFirst(7);
    InsertFirst(10);
    PrintListNormal();
    writeln('---Insertando al final---');
    InsertLast(21);
    InsertLast(1);
    InsertLast(4);
    PrintListNormal();
    writeln('---Insertando ambos---');
    InsertLast(100);
    InsertFirst(50);
    InsertLast(8);
    InsertFirst(50);
    InsertFirst(101);
    PrintListNormal();
    writeln('---Imprimiendo desde atras---');
    PrintListback();
    writeln('---Insertando en 2, 5, 10---');
    InsertInto(18, 2);
    InsertInto(17, 5);
    InsertInto(16, 10);
    PrintListNormal();
end.

{
---Insertando al inicio---
Valor de nodo: 10
Valor de nodo: 7
Valor de nodo: 5
---Insertando al final---
Valor de nodo: 10
Valor de nodo: 7
Valor de nodo: 5
Valor de nodo: 21
Valor de nodo: 1
Valor de nodo: 4
---Insertando ambos---
Valor de nodo: 101
Valor de nodo: 50
Valor de nodo: 50
Valor de nodo: 10
Valor de nodo: 7
Valor de nodo: 5
Valor de nodo: 21
Valor de nodo: 1
Valor de nodo: 4
Valor de nodo: 100
Valor de nodo: 8
---Imprimiendo desde atras---
Valor de nodo: 8
Valor de nodo: 100
Valor de nodo: 4
Valor de nodo: 1
Valor de nodo: 21
Valor de nodo: 5
Valor de nodo: 7
Valor de nodo: 10
Valor de nodo: 50
Valor de nodo: 50
Valor de nodo: 101
---Insertando en 2, 5, 10---
Valor de nodo: 101
Valor de nodo: 16
Valor de nodo: 17
Valor de nodo: 18
Valor de nodo: 50
Valor de nodo: 50
Valor de nodo: 10
Valor de nodo: 7
Valor de nodo: 5
Valor de nodo: 21
Valor de nodo: 1
Valor de nodo: 4
Valor de nodo: 100
Valor de nodo: 8

}