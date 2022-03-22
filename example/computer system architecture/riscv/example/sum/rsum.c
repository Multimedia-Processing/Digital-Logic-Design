int sum(int n, int acc) {
    if (n>0)
        return sum(n-1, acc+n);
    else
        return acc;
}
