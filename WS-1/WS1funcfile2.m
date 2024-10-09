function x = WS1funcfile2(t)
    x = ((2.*t).*(t>-1 & t<=0)) + ((exp(-t)+sin(2*pi.*t)).*(t>0 & t<5));
end