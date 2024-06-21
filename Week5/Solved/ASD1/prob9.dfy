//Problema 9

method adunare(a: array<int>, b: array<int>) returns (c: array<int>)
    requires a.Length == b.Length
    ensures forall i :: 0 <= i < c.Length ==> c[i] == a[i] + b[i]
{
    c := new int[a.Length + 1];
    var report := 0;
    var i := 0;
    while i <= a.Length
        invariant 0 <= i <= a.Length
        invariant forall j :: 0 <= j < i ==> c[j] == a[j] + b[j]
    {
        var s := a[i] + b[i] + report;
        c[i] := s % 2;
        report := s / 2;
        i := i + 1;
    }
    c[a.Length] := report;
}