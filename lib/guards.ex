defmodule Guards do

  @spec type(number()) :: :float | :integer | :not_number
  def type(value) when is_integer(value), do: :integer
  def type(value) when is_float(value), do: :float
  def type(value) when not is_number(value), do: :not_number

  @spec isSingleDigit(integer()) :: boolean()
  def isSingleDigit(value) when is_integer(value) and value < 10, do: true
  def isSingleDigit(value) when not is_integer(value) or value > 9, do: false

  defguardp isEven(value) when is_integer(value) and rem(value, 2) == 0

  @spec returnEvenNumber(integer() | any()) :: :not_even | integer()
  def returnEvenNumber(_value \\ :empty)
  def returnEvenNumber(value) when not isEven(value), do: :not_even
  def returnEvenNumbers(value) when isEven(value), do: value
end
