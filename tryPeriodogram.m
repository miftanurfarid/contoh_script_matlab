%A SMOOTHED PERIODOGRAM
fp=fopen('c:\testdata\ecg29','rb');
x=fread(fp,[1,750],'short');
figure(1);
plot(x,'r:');
      title('ecg29');
      xlabel('t------>');
%function s=smooper(x,w);
%synopsis :s=smooper(x,w).
%computes the smoothed periodogram of the data vector x.
%x=:the data vector
%w:the window;must have odd length
%s:the smoothed periodogram,of length equal to that of x
w=1;

if (rem(length(w),2)==0),
   error('window in smooper must have an odd length');
end
x=reshape(x,1,length(x));
x=x-mean(x);
kappa=(1/length(x))*CONV(x,fliplr(x));
n=0.5*(length(kappa)-length(w));
s=fft([zeros(1,n),w,zeros(1,n)]).*kappa;
s=abs(s(1:length(x)));
figure(2);
subplot(2,1,1),
plot(s,'b:');
title('PERIODOGRAM');
psd=s.^2;
subplot(2,1,2),
plot(psd,'r-');
title('INDIRECT(psd)');

%FOR ECG50
fp=fopen('a:\ecg50','rb');
x2=fread(fp,[1,750],'short');
figure(3);
subplot(3,1,1),
plot(x2,'m');
      title('ecg50');
      xlabel('t------>');
%function s=smooper(x,w);
%synopsis :s=smooper(x,w).
%computes the smoothed periodogram of the data vector x.
%x=:the data vector
%w:the window;must have odd length
%s:the smoothed periodogram,of length equal to that of x
w=1;

if (rem(length(w),2)==0),
   error('window in smooper must have an odd length');
end
x2=reshape(x2,1,length(x2));
x2=x2-mean(x2);
kappa=(1/length(x2))*CONV(x,fliplr(x2));
n=0.5*(length(kappa)-length(w));
s=fft([zeros(1,n),w,zeros(1,n)]).*kappa;
s=abs(s(1:length(x2)));
subplot(3,1,2),
plot(s,'r');
title('PERIODOGRAM');
psd=s.^2;
subplot(3,1,3),
plot(psd,'k--');
title('INDIRECT(psd)')