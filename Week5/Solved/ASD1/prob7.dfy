// Problema 7

method inversare_sir(x: array<int>) returns (y: array<int>)
    requires forall i :: 1 <= i <= x.Length ==> x[i] == y[i]
    ensures forall i :: 1 <= i <= x.Length ==> x[i] == y[x.Length + 1 - i]
{
    y := x;
    var i := 0;
    while i < (x.Length + 1) / 2
        invariant 1 <= i <= (x.Length + 1) / 2
        invariant forall j :: 1 <= j < i ==> x[j] == y[x.Length + 1 - j]
        invariant forall j :: x.Length + 1 - i <= j <= x.Length ==> x[j] == y[x.Length + 1 - j]
    {   
        i := i + 1;
        var temp := y[i];
        y[i] := y[x.Length + 1 - i];
        y[x.Length + 1 - i] := temp;
        
    }
}