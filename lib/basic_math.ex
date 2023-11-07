defmodule BasicMath do

  @spec add(number(), number()) :: number()
  def add(addend_1, addend_2) do
      addend_1 + addend_2
  end

  @spec subtract(number(), number()) :: number()
  def subtract(num1, num2) do
    num1 - num2
  end

  @spec multiply(number(), number()) :: number()
  def multiply(num1, num2) do
    num1 * num2
  end

  @spec divide(number(), number()) :: number()
  def divide(num1, num2) do
    num1 / num2
  end

  @spec roundUp(float()) :: float()
  def roundUp(value) do
    Float.ceil(value, 2)
  end
end
