method between (p: real, r:real) returns (q:real)
    requires r-p > 1.0
    ensures p < q < r
{
    q := p + 1.0;
}

