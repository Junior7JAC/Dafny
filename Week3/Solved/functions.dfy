 function F(): int {
    29
}

method M() returns (r: int) 
    ensures r == 29
{
    r := 29;
}

method Caller() {
    var a := F();
    var b := M();
    assert a == 29;
    assert b == 29;
}


method Triple(x: int) returns (r: int)
        ensures r == 3 * x
    {
        var y := 2 * x;
        r := x + y;
       
    }
function Average (a: int, b: int): int{
        (a + b) / 2
    }

method Triplee(x : int) returns (r : int)
   ensures Average (r , 3 * x ) == r
   {
    r := Average(2 * x, 4 * x);
    assert r == Average(r , 3 * x ) == 3 * x;
   }