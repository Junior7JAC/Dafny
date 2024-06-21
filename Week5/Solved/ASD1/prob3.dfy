//Problema3
//functie pentru puterea unui numar
function pow(base: int, exp: nat): int {
    if exp == 0 then 1 else base * pow(base, exp - 1)
}

//functie recursiva pentru suma elementelor 
function SeqSum(c: seq<nat>, q: nat): nat
  reads c // c este citit
{
  if |c| == 0 then 0
  else c[0] * pow(q, |c|-1) + SeqSum(c[1..], q) 
}

//functie pentru lungimea unei secvente
function Length(c: seq<nat>): nat
{
  if |c| == 0 then 0
  else 1 + Length(c[1..])
}


method conversie_10_q(n: nat, q: nat) returns (c: seq<nat>)
    requires q >= 2 && n >= 0
    ensures n == SeqSum(c, q) 
{
    var m := n;
    c := [];
    while m > 0
    invariant n == m + SeqSum(c, q) * pow(q, |c|) 
    decreases m
    {
        var cifra := m % q;
        c := [cifra] + c; // adaugam cifra la inceputul secventei
        m := m / q;
    }
}

  method conversie_q_10(c: seq<nat>, q: nat) returns (n: nat)
    requires q >= 2 && forall i :: 0 <= i < |c| ==> c[i] < q
    ensures n == SeqSum(c, q)
{
    var i := |c| - 1;
    n := c[i];
    while i > 0
        invariant n == SeqSum(c[i..], q)
        decreases i
    {
        i := i - 1;
        n := n * q + c[i]; // adaugam cifra la numar
    }
}
