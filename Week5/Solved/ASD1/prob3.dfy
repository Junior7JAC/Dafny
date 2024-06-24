// Problema 3

method conversie_10_q(n: int, q: int) returns (c: array<int>)
    requires n >= 0 && q >= 2
    ensures forall i :: 0 <= i < c.Length ==> 0 <= c[i] < q
{
    var m := n;
    var k := 0;
    var temp_c := new int[0];

    while m > 0
        decreases m
    {
        var new_temp_c := new int[k + 1];
        
        if k > 0 {
            for i := 0 to k - 1 {
                new_temp_c[i] := temp_c[i];
            }
        }

        new_temp_c[k] := m % q;
        temp_c := new_temp_c;
        m := m / q;
        k := k + 1;
    }
    c := temp_c;
}

method conversie_q_10(c: array<int>, q: int) returns (result: int)
    requires q >= 2 && forall i :: 0 <= i < c.Length ==> 0 <= c[i] < q
    ensures result >= 0
{
    var i := c.Length - 1;
    var temp_n := 0;
    while i >= 0
        invariant -1 <= i < c.Length
        invariant temp_n >= 0
    {
        temp_n := temp_n * q + c[i];
        i := i - 1;
    }
    result := temp_n;
}
    