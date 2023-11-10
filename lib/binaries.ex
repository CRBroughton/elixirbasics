defmodule Binaries do
  @spec getPNGBinary() :: binary()
  def getPNGBinary() do
    File.read!(Path.join("lib", "visualization.png"))
  end

  def typeFromBinary(fileBinary)
      when binary_part(fileBinary, 0, 8) == <<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A>>,
      do: {:ok, "image/png"}
end
