//Problema 8

method alg1(a: int, b: int) returns (z: int)
    requires a >= 0 && b >= 0  
    ensures z == a * b         
{
    var x: int := a;
    var y: int := b;
    var p: int := 0;
    z := 0;
    while y > 0
        invariant  y == b - p
        invariant  z == p * x
        invariant  x == a 
    {
        z := z + x;
        y := y - 1;
        p := p + 1;
    }
}


method alg2(a: int, b: int) returns (z: int, x: int)
    requires a >= 0 && b > 0  
    ensures a == z * b + x         
{
    x := a;
    var y := b;
    var p: int := 0;
    z := 0;

    while x >= y
        invariant  x == a - p * b
        invariant  y == b
        invariant z == p
        decreases x
    {
        x := x - y;
        z := z + 1;
        p := p + 1;
    }
}
