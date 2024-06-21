// Problema 4
function pow(base: int, exp: nat): int {
    if exp == 0 then 1 else base * pow(base, exp - 1)
}

method alg(b: array<int>) returns (n: int)
  requires b.Length > 0 && forall i :: 0 <= i < b.Length ==> (b[i] == 0 || b[i] == 1)  // cifrele sunt fie 0, fie 1
  ensures n == sum(set j: int | 0 <= j < b.Length :: b[j] * pow(2, b.Length - 1 - j))  // echivalentul în baza 10
{
  n := 0;
  var i := 0;
  while i <= b.Length
    invariant n == sum(set j: int | 0 <= j < i - 1 :: b[b.Length - j] * pow(2, i - 1 - j))   // invariantul ciclului
    invariant i <= b.Length  // invariant
    decreases (b.Length + 1) - i  // functia de terminare
  {
    n := n * 2 + b[b.Length - i];
    i := i + 1;
  }
}
