# importas 0.2.0

## Breaking changes

- Only exported objects can be extracted from aliases.
- Extracting a missing object from an alias causes error. The previous version
  returned `NULL`.
- `%as%` and `importas()` functions construct `importas` class object(s) and
  assign them to alias(es), whereas they return `NULL`. The `importas` class
  object is a list `NULL`s whose names are the names of exported objects from a
  package.

## New features

- A print method for the `improtas` class object lists all the exported objects
  from a package.
- `package` function provides more R-like syntax (e.g., `gg = package(ggplot2)`).
  
## Internal changes

- No longer depends on purrr
- Use GitHub Actions for CI instead of TravisCI and appveyor

# importas 0.1.0

First release to provide the `importas()` function and the `%as%` infix operator.
