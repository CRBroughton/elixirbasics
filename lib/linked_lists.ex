defmodule LinkedLists do
  def getEquipmentList do
    ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
  end

  def getFirstItem(list) do
    hd(list)
  end

  def removeFirstItem(list) do
    tl(list)
  end

  def addSlow(list, value) do
    list ++ [value]
  end

  def prepend(list, value) do
    [value | list]
  end

  def addFast(list, value) do
    prepend(list, value)
  end

  def removeItem(list, index) do
    List.delete_at(list, index)
  end

  def equipmentCount(list) do
    length(list)
  end

  def checkForItem(list, item) do
    item in list
  end
end
