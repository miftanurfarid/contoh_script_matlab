function error  = mserr( in,out )
if length(in)<length(out);
    out=out(1:length(in));
else if length(in)>length(out)
    in=in(1:length(out));
    else
        in=in;
        out=out;
    end
end
in=in./max(abs(in));
out=out/max(abs(out));
z=sum((in-out).^2);
error=z/length(in);
end

