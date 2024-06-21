//Problema 1

method identic6(x: array<int>) returns (res: bool)
  requires x.Length > 0
  ensures res == (forall i :: 1 <= i < x.Length ==> x[i] == x[0])
{
  var n := x.Length;
  res := true;
  var i := 1;
  while i < n
    invariant 1 <= i <= n
    invariant res == (forall j :: 1 <= j < i ==> x[j] == x[0])
  {
    if x[i] != x[0] {
      res := false;
      break;
    }
    i := i + 1;
  }
}