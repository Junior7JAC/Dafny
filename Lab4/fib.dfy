function Fib(n: nat): nat
    ensures Fib(n) >= 0
    //decreases n + 100
{
    if n < 2 then n else Fib(n - 2) + Fib(n - 1)
}
