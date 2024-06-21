//Problema 10

method alg(a: array<int>) returns (b: array<int>)
    requires a != null
    requires a.Length > 1
    ensures forall k :: 0 <= k < a.Length - 1 ==> a[k] <= a[k + 1]
{
    var i := 0;
    while i < a.Length - 1
        invariant 0 <= i <= a.Length - 1
        invariant forall k :: 0 <= k < i ==> a[k] <= a[k + 1]
    {
        if a[i] > a[i + 1] {
            var temp := a[i];
            a[i] := a[i + 1];
            a[i + 1] := temp;
        }
        i := i + 1;
    }
}