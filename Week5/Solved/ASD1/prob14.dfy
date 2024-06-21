//Problema 14

method cauta1(x: array<int>, x0: int) returns (i: int)
  requires x.Length > 0
  ensures 1 <= i < x.Length ==> x[i] == x0
{
  i := 1;
  while i < x.Length && x[i] != x0
    invariant forall j :: 1 <= j < i && j < x.Length ==> x[j] != x0
    invariant 1 <= i <= x.Length
    decreases x.Length - i
  {
    i := i + 1;
  }
}