using Pkg

Pkg.add("IJulia")
Pkg.add("PyCall")

Pkg.activate((@__DIR__))
pkgs = [
    PackageSpec("PythonCall"),
    PackageSpec("Plots"),
    PackageSpec("CairoMakie"),
    PackageSpec("Comrade"),
    PackageSpec("ComradeAHMC"),
    PackageSpec("ComradeOptimization"),
    PackageSpec("OptimizationBBO"),
    PackageSpec("Distributions"),
    PackageSpec("DistributionsAD"),
    PackageSpec("OptimizationOptimJL"),
    PackageSpec(name="Enzyme", version=v"0.11.0"),
    PackageSpec("Zygote"),
    PackageSpec("AxisKeys"),
    PackageSpec("StableRNGs"),
    PackageSpec("VLBIImagePriors"),
    PackageSpec("Pyehtim"),
    PackageSpec("ForwardDiff"),
]
Pkg.add(pkgs)
using Pyehtim
using Comrade

# Now ensure that PyCall is using the same Python ex. as PythonCall
ENV["PYTHON"] = PythonCall.C.CTX.exe_path
Pkg.build()

