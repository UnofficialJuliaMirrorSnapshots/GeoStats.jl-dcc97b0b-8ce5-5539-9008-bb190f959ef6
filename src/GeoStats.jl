# ------------------------------------------------------------------
# Licensed under the ISC License. See LICENCE in the project root.
# ------------------------------------------------------------------

module GeoStats

using Reexport
using Random
using LinearAlgebra
using Distributed
using StaticArrays
using RecipesBase

# reexport basic packages
@reexport using Distances
@reexport using Distributions

# reexport project modules
@reexport using GeoStatsBase
@reexport using KrigingEstimators

# extend base module
import GeoStatsBase: solve, solve_single, preprocess

# solvers installed by default
include("solvers/kriging.jl")
include("solvers/seqsim.jl")
include("solvers/sgsim.jl")
include("solvers/cookiecutter.jl")

# solver comparisons
include("comparisons/cross_validation.jl")
include("comparisons/visual_comparison.jl")

export
  # solvers
  Kriging,
  SeqGaussSim,
  CookieCutter,

  # solver comparisons
  VisualComparison,
  CrossValidation

end # module
