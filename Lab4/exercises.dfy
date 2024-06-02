////3.0
function F(x: int): int 
    //decreases x //default decreases, works
    //decreases x + 10 //works
    //decreases x - 10 //doesn't work
    //decreases  10-x
{ 
    if x < 10 then x else F(x - 1)
}


/////3.1
function G(x: int): int 
    //decreases x //default decreases, works
    //decreases x + 10 //works
    //decreases -x  //doesn't work
{
    if 0 <= x then G(x - 2) else x
}

function G'(x: int): int
    decreases -x
{
    if x%2==0 && x>0 then 0
    else if x%2!=0 && x>0 then -1
    else x
}

/////3.2
function H(x: int): int 
    //decreases x //default decreases, doesn't work, check error message
    decreases x + 60 // or higher, works
    //decreases x + 59 //doesn't work
    //decreases x - 1 //doesn't work
{
    if x < -60 then x else H(x - 1)
}


/////3.3
function I(x: nat, y: nat): int 
    //decreases x, y //defauld decreases, works
    //decreases x + 177, y + 108 //works
    //decreases x - 1, y - 1 // works
    //decreases x - 2, y - 2 //doesn't work
    //decreases x - 4, y - 20 //doesn't work
{
    if x == 0 || y == 0 then 12
    else if x % 2 == y % 2 then I(x - 1, y) //if they're both odd or both even
    else I(x, y - 1) //if one is odd and one is even
}


/////3.4
function J(x: nat, y: nat): int 
    //decreases x, y //defauld decreases, works
    //decreases x - 2, y //doesn't work ????????????????
{
    if x == 0 then y
    else if y == 0 then J(x - 1, 3)
    else J(x, y - 1)
}
/*This function returns 3 if x starts > 0, or y if x starts = 0

x  y
5 13
5 12
...            x y
5 0 then calls 4 3
-------------- 4 2
-------------- 4 1            x y
-------------- 4 0 then calls 3 3
----------------------------- 3 2
----------------------------- 3 1            x y
----------------------------- 3 0 then calls 2 3
*/


/////3.5
function K(x: nat, y: nat, z: nat): int 
    //decreases x, y, z //defauld decreases, works
{
    if x < 10 || y < 5 then x + y 
    else if z == 0 then K(x - 1, y, 5) //if x >= 10 and y >= 5 and z == 0 calls K(x - 1, y, 5)
    else K(x, y - 1, z - 1) // if x >= 10 and y >= 5 and z != 0 calls K(x, y - 1, z - 1)
}


/////3.6
function L(x: int): int 
    //decreases x //defauld decreases, doesn't work
    //decreases -x //doesn't work, check error message
    //decreases 98 - x //doesn't work
    decreases 99 - x //works
{
    if x < 100 then L(x + 1) + 10 else x
}

/////MyExample
function foo(x: int): int
  //decreases x - 51
  //decreases x
{
  if x < 50 then x else foo(x - 5)
}

