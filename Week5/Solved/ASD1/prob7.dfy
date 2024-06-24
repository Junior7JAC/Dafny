// Problema 7

method inversare_sir(x: array<int>) returns (y: array<int>)
  requires 1 <= x.Length
  ensures y.Length == x.Length
  ensures forall i :: 0 <= i < x.Length ==> y[i] == x[x.Length - 1 - i]
{
  var n := x.Length;
  y := new int[n];
  var i := 0;

  while i < n
    invariant 0 <= i <= n
    invariant forall j :: 0 <= j < i ==> y[j] == x[n - 1 - j]
    invariant y.Length == x.Length
  {
    y[i] := x[n - 1 - i];
    i := i + 1;
  }
}