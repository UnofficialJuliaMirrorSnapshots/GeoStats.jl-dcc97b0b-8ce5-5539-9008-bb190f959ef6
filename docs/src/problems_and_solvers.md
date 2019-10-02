# Problems & solvers

One of the greatest features of GeoStats.jl is the ability to define geostatistical problems
independently of the solution strategy. This design allows researchers and practioners to
perform *fair comparisons* between different solvers. It is perhaps the single most important
contribution of this project.

If you are an experienced user of geostatistics or if you do research in the field, you know
how hard it is to compare algorithms fairly. Often a new algorithm is proposed in the literature,
and yet the task of comparing it with the state of the art is quite demanding. Even when a
comparison is made by the author after a great amount of effort, it is inevitably biased.

Part of this issue is attributed to the fact that a formal definition of geostatistical problems is missing.
The project provides solutions to three problems defined below.

## Estimation problem

An estimation problem in geostatitsics is a triplet:

1. Spatial data (i.e. data with coordinates)
2. Spatial domain (e.g. regular grid, point collection)
3. Target variables (or variables to be estimated)

Each of these components is constructed separately, and then grouped (no memory is copied) in an
`EstimationProblem`.

```@docs
EstimationProblem
```

Please check [Spatial data](spatialdata.md) and [Domains](domains.md) for currently implemented
data and domain types.

## Simulation problem

Likewise, a stochastic simulation problem in geostatistics is represented with the same triplet.
However, the spatial data in this case is optional in order to accomodate the concept of
conditional versus unconditional simulation.

```@docs
SimulationProblem
```

```@docs
hasdata
```

## Learning problem

A geostatistical learning problem consists of a triplet:

1. Source spatial data (e.g. with labels)
2. Target spatial data (e.g. without labels)
3. Learning task (e.g. classification)

In this case, a learning model is trained with the source spatial data, and then used to perform the same task with the target spatial data.

```@docs
LearningProblem
```

## List of solvers

Below is the list of solvers distributed with GeoStats.jl. For more solvers, please check
the [project page on GitHub](https://github.com/juliohm/GeoStats.jl#problems-and-solvers)
where a table is provided with links to accompanying repositories.

### Estimation

```@docs
Kriging
```

### Simulation

```@docs
SeqGaussSim
```

```@docs
CookieCutter
```

### Learning

```@docs
PointwiseLearn
```
