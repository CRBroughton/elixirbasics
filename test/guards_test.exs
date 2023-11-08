defmodule GuardsTest do
  use ExUnit.Case
  doctest Guards

  test "Returns a integer if an integer is passed in" do
    assert Guards.type(1) == :integer
  end

  test "Returns a float if a float is passed in" do
    assert Guards.type(1.2) == :float
  end

  test "Return a not_number atom when the value is not a number" do
    assert Guards.type("Boo") == :not_number
  end

  test "Checks if a value is a single digit (success)" do
    assert Guards.isSingleDigit(9) == true
  end

  test "Checks if a value is a single digit (failure)" do
    assert Guards.isSingleDigit(10) == false
  end

  test "Returns an even number if you pass one" do
    assert Guards.returnEvenNumbers(6) == 6
  end

  test "Returns a :not_even atom when the value is not even" do
    assert Guards.returnEvenNumber(5) == :not_even
  end

  test "Returns nil when no value is given" do
    assert Guards.returnEvenNumber() == :not_even
  end
end
