# STLgen

STL generator.

## Installation

```sh
$ gem install stlgen
```

## Usage

```rb
require "stlgen"

stl = STLgen::STL::Cube.new(width: 1, length: 1, height: 1)
data = stl.generate
File.write("cube.stl", data)
```

This code generates [examples/cube.stl](https://github.com/naoty/stlgen/blob/master/examples/cube.stl).
