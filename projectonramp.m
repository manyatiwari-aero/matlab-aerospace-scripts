nObs = 357
lambdaStart = 630.0200
lambdaDelta = 0.1400


      load('starData.m')
      

   

nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14

lambdaEnd = lambdaStart +(nObs-1)*lambdaDelta
lambda = (lambdaStart: lambdaDelta: lambdaEnd)


s = spectra(:,6)


clear xlabel
clear ylabel
plot(lambda, s,".-")
xlabel("Wavelength")
ylabel("Intensity")

[sHa, idx] = min(s)
lambdaHa = lambda(idx)

hold on
x = lambdaHa
y = sHa
plot(x,y, "rs", MarkerSize=8)
hold off

z = (lambdaHa/656.28)-1
speed = z*299792.458