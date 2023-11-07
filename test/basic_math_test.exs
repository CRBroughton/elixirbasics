defmodule BasicMathTest do
  use ExUnit.Case
  doctest BasicMath

  test "adds two numbers" do
    assert BasicMath.add(1, 2) == 3
  end

  test "subracts a number from another number" do
    assert BasicMath.subtract(3, 2) == 1
  end

  test "multiplies two numbers together" do
    assert BasicMath.multiply(3, 3) == 9
  end

  test "divides two numbers" do
    assert BasicMath.divide(10, 2) == 5
  end

  test "rounds up a floating number to two points of precision" do
    assert BasicMath.roundUp(34.251) == 34.26
  end
end
