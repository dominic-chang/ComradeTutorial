#!/bin/bash
curl -fsSL https://install.julialang.org | sh
juliaup add 1.9.1
julia setup.jl 
