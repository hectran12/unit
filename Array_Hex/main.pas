program test;
uses Array_Hex, crt;
var
    arr, clone: hexArray_Integer;
    i: integer;
begin clrscr;
    arr[0] := 1;
    arr[1] := 2;
    arr[2] := 100;
    arr[3] := -100;
    arr[4] := 20;
    arr[5] := -6;
    arr[6] := 99;
    {
        tìm max
    }
    // writeln('Max = ', array_max_int(arr));
    {
        tìm min
    }
    // writeln('Min = ', array_min_int(arr));
    {
        tính tổng mảng
    }
    // writeln('Sum = ', array_sum_int(arr));
    {
        xóa phần tử
    }
    // arr := array_remove_int(arr, -100);

    {
        sắp xếp mảng vả thêm phàn tử vào mảng
    }
    // arr := array_push_int(arr, 1000);
    // arr := array_sort_int(arr, LARGE_TO_SMALL);
    // for i:=0 to getLength_Array(arr)-1 do begin
    //     writeln(arr[i]);
    // end;
    
    clone := array_push_int(clone, 10);
    clone := array_push_int(clone, 9);
    clone := array_push_int(clone, 7);
    clone := array_push_int(clone, 100);
    clone := array_push_int(clone, 25);
    clone := array_push_int(clone, -99);
    clone := array_sort_int(clone, LARGE_TO_SMALL);
    for i:=0 to getLength_Array(clone)-1 do begin
        writeln(clone[i]);
    end;
end.
