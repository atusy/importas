# importas 0.2.0

## Breaking changes

- Only exported objects can be extracted from aliases.
- Extracting a missing object from an alias causes error. The previous version
  returned `NULL`.
- `%as%` and `importas()` functions construct `importas` class objects. The
  `importas` class object is list of strings whose name and components are
  identical to names of exported objects from a package. Its attribute, "pkg",
  infers whose alias the object is. Previously, the functions returned namespace
  objects.

## New features

- A print method for the `improtas` class object lists all the exported objects
  from a package.
  
## Internal changes

- No longer depends on purrr
- Use GitHub Actions for CI instead of TravisCI and appveyor

# importas 0.1.0

First release to provide the `importas()` function and the `%as%` infix operator.
