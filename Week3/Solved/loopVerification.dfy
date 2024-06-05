// method WhileLoop(n: int)
//     requires n >= 0
//     ensures s == SumToN(n) && i == n + 1
// {
//     var s := 0;
//     var i := 1;

//     while i <= n
//         invariant 1 <= i <= n + 1 && s == SumToN(i - 1)
//         decreases n - i
//     {
//         s := s + i;
//         i := i + 1;
//     }
// }

// method FindIndex(a: array<int>, x: int) returns (result: int)
//   requires a != null
//   ensures 
//     a == old(a) &&
//     ((result == -1 && forall i :: 0 <= i < a.Length ==> a[i] != x) ||
//     (0 <= result < a.Length && a[result] == x && 
//     forall i :: 0 <= i < result ==> a[i] != x))
// {
//   var i := 0;
//   var r := -1;
//   var n := a.Length;

//   while i < n && r == -1
//     invariant 
//       a == old(a) &&
//       n == a.Length &&
//       0 <= i <= n &&
//       forall j :: 0 <= j < i ==> a[j] != x &&
//       (r == -1 || (r == i && i < n && a[r] == x))
//     decreases n - i
//   {
//     if a[i] == x {
//       r := i;
//     } else {
//       i := i + 1;
//     }
//   }
//   result := r;
// }

