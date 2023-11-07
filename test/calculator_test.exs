defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "finds the percentage value" do
    Calculator.findPercentageOfValue(20, 100) == 25
  end
end
