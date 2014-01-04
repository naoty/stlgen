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
