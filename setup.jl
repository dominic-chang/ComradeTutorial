using Pkg

Pkg.add("IJulia")
Pkg.activate((@__DIR__))
pkgs = [
    PackageSpec("PyPlot"),
    PackageSpec("PythonPlot"),
    PackageSpec("Plots"),
    PackageSpec("CairoMakie"),
    PackageSpec("Comrade"),
    PackageSpec("ComradeAHMC"),
    PackageSpec("ComradeOptimization"),
    PackageSpec("OptimizationBBO"),
    PackageSpec("Distributions"),
    PackageSpec("DistributionsAD"),
    PackageSpec("OptimizationOptimJL"),
    PackageSpec("Zygote"),
    PackageSpec("AxisKeys"),
    PackageSpec("StableRNGs"),
    PackageSpec("VLBIImagePriors"),
    PackageSpec("Pyehtim"),
    PackageSpec("ForwardDiff"),
    PackageSpec(url="https://github.com/dchang10/FastElliptic.git"),
    PackageSpec(url="https://github.com/dchang10/Jube.git"),
]
Pkg.add(pkgs)
using Comrade
