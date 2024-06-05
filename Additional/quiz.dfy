method myMethod(n: int) returns (sum: int)
  requires n >= 0 // Precondition: n must be a non-negative integer.
  ensures sum == (n * (n + 1)) / 2 // Postcondition: The sum must be the sum of integers from 1 to n.
{
  sum := 0;
  var i := 0; // Start from 0

  while i < n
    invariant sum == (i * (i + 1)) / 2 // Loop invariant: sum is the sum of integers from 1 to i.
    invariant i <= n // Loop invariant: i is less than or equal to n.
    invariant i >= 0 // Loop invariant: i is non-negative.
    //invariant sum >= i // Loop invariant: sum is greater than or equal to i.
    // invariant sum >= 0 // Loop invariant: sum is non-negative.
  {
    i := i + 1; // Increment i before adding it to sum
    sum := sum + i; // Add the incremented value of i to sum
  }
}

/////MyExample
function foo(x: int): int
  // decreases x 
  // decreases (50 - x) / 5
  // decreases (x - 49) / 5 
{
  if x < 50 then x else foo(x - 5)
}

