defmodule BinariesTest do
  use ExUnit.Case
  doctest Binaries

 test "checks if an image is a png" do
  binary = Binaries.getPNGBinary()
  assert Binaries.typeFromBinary(binary) == {:ok, "image/png"}
 end
end
