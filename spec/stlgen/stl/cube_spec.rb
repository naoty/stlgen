require "spec_helper"

describe STLgen::STL::Cube do
  describe "#generate" do
    it "generates 10x10x10 cube with ASCII format" do
      sample = Pathname.new("spec/support/cube-ascii.stl")
      cube = STLgen::STL::Cube.new(width: 1, length: 1, height: 1)
      data = cube.generate
      expect(data).to eq sample.read
    end
  end
end
