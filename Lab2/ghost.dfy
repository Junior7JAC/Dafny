function Average (a: int, b: int): int{
    (a + b) / 2
}
ghost method Triple (x: int) returns (r: int)
    ensures r == 3 * x
{
    r := Average(2 * x, 4 * x);
}
