method MyMethod(x: int) returns (y: int)
         requires x >= 20
         ensures y >= 50
     {
        var a, b;
        a := x-1;
        if x < 30 {
            b := 51 - x;
        } else {
            b := 31;
        }
        y := a + b;
     }

     method MyMethodd(x: int) returns (y: int)
         requires x >= 20
         ensures y >= 50
     { 
        var a := x - 1;
        var b := 31;
        y := a + b;
    } 