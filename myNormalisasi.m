function normalized = myNormalisasi(sinyal, x, y)
%% x = batas atas normalisasi
%  y = batas bawah normalisasi
m = min(sinyal);
range = max(sinyal) - m;
mix = (sinyal - m) / range;
 
range2 = y - x;
normalized = (mix*range2) + x;
