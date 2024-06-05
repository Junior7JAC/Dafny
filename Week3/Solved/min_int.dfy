method Min(x: int, y: int) returns (m: int)
    requires x > 0 && y > 0
    ensures m <= x && m <= y
{
    if x < y {
        m := x;
    } else {
        m := y -x;
    }
}



// method Min(x: int, y: int) returns (m: int)
//     ensures m <= x && m <= y
//     ensures m == x || m == y
//     {
//         if x <= y {
//             m := x;
//         } else {
//             m := y;
//         }
//     }

method Caller(){
    var x := 3;
    var y := 1;
    var result := Min(x,y);
    print result;
    assert result <= x && result <= y;   //TODO verifica
}