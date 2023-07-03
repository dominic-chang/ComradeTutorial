import Pkg;
Pkg.activate((@__DIR__));
using Comrade
using Pyehtim
using Plots

gauss = stretched(Gaussian(), μas2rad(10), μas2rad(10)) # Make a  10 μas Gaussian
mring = smoothed(stretched(MRing([0.5, 0.1], [0.0, 0.2]), μas2rad(20), μas2rad(20)), μas2rad(5)) # Make a MRing 

model = 2mring + shifted(gauss, μas2rad(50), 0.0) #shift gaussian East by 50 μas and add its flux to mring model. Double the flux of the mring
Plots.plot(model)

modelfov = μas2rad(200)
sze = 200
img = intensitymap(model, modelfov, modelfov, sze, sze) #Create an intenisty map from model
fits_file = joinpath((@__DIR__), "model.fits")
Comrade.save(fits_file, img) #Save image as fits file




inimg = ehtim.image.load_fits(fits_file)
