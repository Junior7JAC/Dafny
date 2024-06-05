 function SeqSum(s: seq<int>, lo: int, hi: int): int
    requires 0 <= lo <= hi <= |s|
    decreases hi - lo
    //decreases lo //doesn't work
    //decreases -lo // doesnt't work
    ensures SeqSum(s, lo, hi) == (if lo == hi then 0 else s[lo] + SeqSum(s, lo + 1, hi))
    //ensures SeqSum(s, lo, hi) >= hi
{
    if lo == hi then 0 else s[lo] + SeqSum(s, lo + 1, hi)
}


/*Since we don't know the result of the sum (from lo to hi - 1), we have to manually specify 
the postcondition that should hold*/