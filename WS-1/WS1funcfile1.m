function x = WS1funcfile1(t)
    x = zeros(size(t));
    xexp = exp(-0.5*t).*(t<-1);
    xramp = (-3*t+1).*(t>=-1 & t<0);
    xunit = (t>=0 & t<2);
    xsine = (exp(0.5.*t).*sin(2*pi*t.*2.5)).*(t>2);
    x = xexp+xramp+x+xunit+xsine;
end