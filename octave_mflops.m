N = 4;
for i = 1:N
    n = 4096;
    x = rand(n, n);
    tic, x = x * x;
    y = toc;
    mflops(i) = n*n / y / 1e6;
end

mflops_mean = sum(mflops)/N;
mflops_sig = std(mflops);
printf('MFLOPS: (%.2f +- %.2f)\n', mflops_mean, mflops_sig);
%%MFLOPS: (49718.83 +- 55.62)
