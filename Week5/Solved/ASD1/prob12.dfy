//Problema  12

function pow(base: int, exp: nat): int {
    if exp == 0 then 1 else base * pow(base, exp - 1)
}

method alg(a: array<real>, x: real) returns (v: real)
    requires a.Length > 0
    ensures v == sum(set i: int | 0 <= i < a.Length :: a[i] * pow(x, j - i))
{
    var i: int := a.Length - 1;
    v := a[i];
    while i >= 0
        invariant 0 <= i < a.Length
        invariant v == sum(set j: int | i <= j < a.Length :: a[j] * pow(x, j - i))
    {
        v := v * x + a[i];
        i := i - 1;
    }
}