//Problema  13

function gcd(a: int, b: int): int
    requires a > 0 && b >= 0
    ensures gcd(a, b) > 0
    decreases b
{
    if b == 0 then a else gcd(b, a % b)
}

method cmmdc1(a: int, b: int) returns (d: int)
    requires a > 0 && b > 0
    ensures d == gcd(a, b)
{
    var x := a;
    var y := b;

    while y != 0
        invariant x > 0
        invariant y >= 0
        invariant gcd(x, y) == gcd(a, b)
        decreases y
    {
        var temp := y;
        y := x % y;
        x := temp;
    }

    d := x;
}

method cmmdc2(a: int, b: int) returns (d: int)
    requires a > 0 && b > 0
    ensures d == gcd(a, b)
{
    var x := a;
    var y := b;

    while x != y
        invariant x > 0 && y > 0 
        invariant gcd(x, y) == gcd(a, b)
        decreases x + y
    {
        if x > y {
            x := x - y;
        } else {
            y := y - x;
        }
    }
    d := x;
}