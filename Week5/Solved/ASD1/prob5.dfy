// Problema 5

function pow(base: int, exp: nat): int {
    if exp == 0 then 1 else base * pow(base, exp - 1)
}

// method inversare(n: nat) returns (m: nat)
//   requires n == sum(set i: int | 0 <= i <= k :: c[i] * pow(10, i)) 
//   ensures m == sum(set i: int | 0 <= i <= k :: c[i] * pow(10, k-i)) 
// {
//   m := 0;
//   var p := 0;
//   while n > 0
//     invariant m == sum(set i: int | 0 <= i < p :: c[i] * pow(10, p-1-i))
//     invariant n == sum(set i: int | p <= i <= k :: c[i] * pow(10, i-p)) 
//     decreases n 
//   {
//     p := p + 1;
//     m := m * 10 + n % 10;
//     n := n / 10;
//   }
// }

method inversare(n: int) returns (inversat: int)
    requires n >= 0
{
    inversat := 0;
    var num := n;
    var p := 0;

    while num > 0
        decreases num
    {
        p := p + 1;
        inversat := inversat * 10 + num % 10;
        num := num / 10;
    }
}