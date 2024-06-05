method Triple(x: int) returns (r: int)
    ensures r == 3 * x
{
    var y := 2 * x;
    r := x + y;
}

method Caller(){
    var result := Triple(18);
    assert result < 100;
}

method Main()
{
    var result := Triple(5);
    assert result == 15;
}