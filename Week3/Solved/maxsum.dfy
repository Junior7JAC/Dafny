function Max(a: int, b: int): int
    ensures Max(a, b) >= a && Max(a, b) >= b
    ensures Max(a, b) == a || Max(a, b) == b
{
    if a > b then a else b
}

//TODO: method Max()

method MaxSum(x: int, y: int) returns (s: int, m: int)
    ensures s == x + y && m == Max(x, y)
{
    s := x + y;
    m := Max(x, y);
}

method Caller(){
    var x := 1928;
    var y := 1;

    var sum, maximum := MaxSum(x, y);

    assert sum == x + y;
    assert maximum == Max(x, y);
}

method ReconstructFromMaxSum(s: int, m: int) returns (x: int, y: int)
    // requires m <= s
    // ensures s == x + y 
    // ensures (m == x || m == y) && x <= m && y <= m
{

    if m == s {
        x := s;
        y := 0;
    } else {
        x := m;
        y := s - m;
    } 
}

// method TestMaxSum(x: int, y: int){
//     var s, m := MaxSum(x, y);
//     var xx, yy := ReconstructFromMaxSum(s, m);
//     assert (xx == x && yy == y) || (xx == y && yy == x);
// }


// method Min(x: int, y: int) returns (m: int)
//     ensures m <= x && m <= y
//     {
//         if x <= y {
//             m := x;
//         } else {
//             m := y;
//         }
//     }

// method Minfake(x: int, y: int) returns (m: int)
//     ensures m <= x && m <= y
//     {
//         if x <= y {
//             m := x-10;
//         } else {
//             m := y - 20;
//         }
//     }



