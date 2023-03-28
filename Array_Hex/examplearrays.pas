program test;
uses Arrays, crt;
var
    arr, clone: Array_Integer;
    i: integer;
begin clrscr;
    arr.push(10);
    arr.push(20);
    arr.push(30);
    arr.push(-6000);
    arr.push(1);

    writeln('Tong so phan tu: ', arr.getLength());
    writeln('Phan tu nho nhat: ', arr.Min());
    writeln('Phan tu lon nhat: ', arr.Max());
    writeln('Phan tu thu 0: ', arr.get(0));
    writeln('Sum: ', arr.sum());


    // sắp xếp
    if arr.sort(SMALL_TO_LARGE) = TRUE then begin
        for i:=0 to arr.getLength()-1 do begin
            writeln(arr.get(i));
        end;
    end;
end.
