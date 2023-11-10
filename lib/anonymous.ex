defmodule Anonymous do

  def getEquipmentList do
    [:space_helmet, :space_suit, :snacks, :grappling_hook, :probe]
  end

  @spec getFirstItem(list(atom())) :: atom()
  def getFirstItem(list) do
    first = fn [head | _rest] -> head end
    first.(list)
  end

  @spec atomToString(list(atom())) :: list(String.t())
  def atomToString(list) do
    convert = fn x ->
      to_string(x)
      |> String.upcase()
      |> String.replace("_", " ")
    end

    Enum.map(list, convert)
  end
end
