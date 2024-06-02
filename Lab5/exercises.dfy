///11.0

//a)
// method A(){
// var a := 0; 
// while a != 100 
//     invariant true 
//     {
//         a := a + 1;
//     }
// assert a == 100;
// }

// //b)
// method B(){
//     var b := 20; 
//     while 10 < b
//         invariant b % 2 == 0{
//             b := b - 2;
//         }
//     assert b == 10;
// }

//c) 
// method C(){
//     var c := 20; 
//     while c < 20 
//         invariant c % 2 == 0 {}
//     assert c == 20;
// }

//d)
// method D(){
//     var d := 3; 
//     while d < 2 
//         invariant d % 2 == 0{}
//     assert d % 2 == 0;
// }

//e)
// method E(){
//     var ee;
//     if 50 < ee < 100 { 
//         while ee < 85 
//             invariant ee % 2 == 0 
//         assert ee < 85 && ee % 2 == 1; 
// }
// }

//f) 
// method F(){
//     var f;
//     if 0 <= f { 
//         while f % 2 == 0 
//             invariant f < 100 {}
//         assert 0 <= f; 
// }
// }

// //g) 
// method G(){
//     var g := 0; 
//     while g < 100 
//         invariant 0 <= g < 100 
//     assert g == 25;
// }

// method F(initialValue: int)
//   requires initialValue > 0 // Precondition: The initial value should be positive.
//   ensures a <= 10 && a >= 0 // Postcondition: a is less than or equal to 10 and non-negative after the method executes.
// {
//   var a := initialValue;
//   while a > 10 {
//     a := a - 2;
//   }
// }

// method A(a: int) 
//   requires a > 10 
//   ensures a % 2 == 0
// {
//   while a > 10
//     invariant a % 2 == 0{
//   a := a - 2;
//   }
// }


//More examples:

// method A(input: int) returns (a: int)
//   requires input > 10 && input % 2 == 0
//   ensures a % 2 == 0 
// {
//   a := input; 
//   while a > 10
//     invariant a % 2 == 0 {
//     a := a - 2; 
//   }
// }

// method myMethod(n: int) returns (sum: int)
//   requires n >= 0 
//   ensures sum >= 0 
// {
//   sum := 0;
//   var i := 0;

//   while i < n
//     //invariant sum >= 0 && i >= 0 
//     //invariant sum == (i * (i + 1)) / 2 
//   {
//     i := i + 1;
//     sum := sum + i;
//   }
// }


