method binarySearch(a: array<int>, n : int) returns (index : int)
requires forall i,j :: 0 <= i < j < a.Length ==> a[i] <= a[j]
ensures 0 <= index ==> index < a.Length && a[index] == n
ensures index < 0 ==> forall k :: 0 <= k < a.Length ==> a[k] != n
{   
    var low := 0;
    var high := a.Length;
    while low < high
        invariant 0 <= low <= high <= a.Length
        invariant forall i :: 0 <= i < a.Length && !(low <= i < high) ==> a[i] != n
   {
      var mid := (low + high) / 2;
      if a[mid] < n
      {
         low := mid + 1;
      }
      else if n < a[mid]
      {
         high := mid;
      }
      else
      {
         return mid;
      }
   }
   return -1;
   
}