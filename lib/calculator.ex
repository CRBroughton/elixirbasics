defmodule Calculator do
  @spec findPercentageOfValue(number(), number()) :: number()
  def findPercentageOfValue(percentage, value) do
    percentage
    |> BasicMath.divide(100)
    |> BasicMath.multiply(value)
    |> BasicMath.roundUp()
  end
end
