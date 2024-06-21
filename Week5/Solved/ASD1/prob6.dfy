//Problema6
function pow(base: int, exp: nat): int {
    if exp == 0 then 1 else base * pow(base, exp - 1)
}

method produs(a: nat, b: nat) returns (result: nat)
  requires a > 0 && b > 0 
  ensures result == a * b
{
  var x := a;
  var y := b;
  var prod := 0;

  while y > 0
    invariant prod == a * (b - y) 
    invariant y >= 0 
  {
    prod := prod + x;
    y := y - 1;
  }

  result := prod;
}
