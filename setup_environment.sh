#!/bin/bash
curl -fsSL https://install.julialang.org | sh
juliaup add 1.8.5
julia setup.jl 
