unit Arrays;
interface
    type
        hexArray_Integer = array[0..1000] of integer;
        SORT_TYPE = (SMALL_TO_LARGE, LARGE_TO_SMALL);
        Array_Integer = object
                    private
                        arr: hexArray_Integer;
                    public
                        function getLength (): integer;
                        function push(number: integer): boolean;
                        function remove(number: integer): boolean;
                        function get (location: integer): integer;
                        function Min (): integer;
                        function Max (): integer;
                        function sum (): integer;
                        function sort(type_sort: SORT_TYPE): boolean;
        end;


implementation
    function Array_Integer.getLength(): integer;
    var
        result: integer;
        i: integer;
    begin
        result := 0;
        for i:=0 to length(arr) do begin
            if arr[i] = 0 then begin
                break;
            end
            else begin
                result := result + 1;
            end;
        end;
        getLength := result;
    end;

    function Array_Integer.push(number: integer): boolean;
    var
        length: integer;
    begin
        length := self.getLength();
        if length <> 0 then begin
            arr[length] := number;  
        end
        else begin
            arr[0] := number;
        end;
        push := true;
    end;

    function Array_Integer.remove(number: integer): boolean;
    var
        newArr: hexArray_Integer;
        i, realstt: integer;
    begin
        realstt := 0;
        for i:=0 to self.getLength() do begin
            if arr[i] <> number then begin
                newArr[realstt] := arr[i];
                realstt := realstt + 1;
            end;
        end;
        arr := newArr;
        remove := true;
    end;

    function Array_Integer.get (location: integer): integer;
    begin
        get := arr[location];
    end;

    function Array_Integer.Min (): integer;
    var
        i: integer;
        getLengths: integer;
        mins: integer;
    begin
        getLengths := self.getLength();
    
        if getLengths <= 0 then begin
            Min := 0;
        end
        else begin
            mins := arr[0];
            for i:=0 to getLengths-1 do begin
                if arr[i] < mins then begin
                    mins := arr[i];
                end;
            end;
            Min := mins;
        end;
    end;

    function Array_Integer.Max (): integer;
    var
        i: integer;
        getLengths: integer;
        maxs: integer;
    begin
        getLengths := self.getLength();
    
        if getLengths <= 0 then begin
            Max := 0;
        end
        else begin
            maxs := arr[0];
            for i:=0 to getLengths-1 do begin
                if arr[i] > maxs then begin
                    maxs := arr[i];
                end;
            end;
            Max := maxs;
        end;
    end;

    function Array_Integer.sum (): integer;
    var
        i, result, getLengths: integer;
    begin
        getLengths := self.getLength();
        if getLength <= 0 then begin
            sum := 0;
        end
        else begin
            result := 0;
            for i:=0 to getLength - 1 do begin
                result := result + arr[i];
            end;
            sum := result;
        end;
    end;

    function Array_Integer.sort(type_sort: SORT_TYPE): boolean;
    var
        i, realstt, trush: integer;
        newArr: hexArray_Integer;
    begin
        realstt := 0;
        if type_sort = LARGE_TO_SMALL then begin
            for i:=0 to self.getLength() do begin
                trush := self.max();
                newArr[realstt] := trush;
                realstt := realstt + 1;
                self.remove(trush);
            end;
            arr := newArr;
        end
        else if type_sort = SMALL_TO_LARGE then begin
            for i:=0 to self.getLength() do begin
                trush := self.min();
                newArr[realstt] := trush;
                realstt := realstt + 1;
                self.remove(trush);
            end;
            arr := newArr;
        end
        else begin
            arr := newArr;
        end;
        sort := True;
    end;

    
end.
