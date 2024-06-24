// Problema 5

method inversare(n: nat) returns (m: nat)
  requires n >= 0
  ensures m == Reverse(n)
{
  m := reverseHelper(n, 0);
}

function Reverse(n: nat): nat
{
  if n == 0 then 0 else reverseHelper(n, 0)
}

function reverseHelper(n: nat, acc: nat): nat
  decreases n
{
  if n == 0 then acc
  else reverseHelper(n / 10, acc * 10 + n % 10)
}
