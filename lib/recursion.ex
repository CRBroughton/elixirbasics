defmodule Recursion do

  def getEquipmentList() do
    LinkedLists.getEquipmentList()
  end

  @spec loop(list()) :: nil
  def loop([]), do: nil
  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

  @spec equipmentCount(list()) :: non_neg_integer()
  def equipmentCount([]), do: 0
  def equipmentCount([_head | tail]) do
    1 + equipmentCount(tail)
  end

  def formatEquipmentList([]), do: []
  def formatEquipmentList(array) do
    head = hd(array)
    tail = tl(array)
    [head
    |> String.downcase()
    |> String.replace(" ", "_")
    | formatEquipmentList(tail)]
  end

  @spec occurenceCount(list(), any()) :: non_neg_integer()
  def occurenceCount([], _value), do: 0
  def occurenceCount([value | tail], value), do: 1 + occurenceCount(tail, value)
  def occurenceCount([_head | tail], value), do: occurenceCount(tail, value)
end
