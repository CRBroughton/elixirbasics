defmodule LinkedListsTest do
  use ExUnit.Case
  doctest LinkedLists

  test "Gets the first item in the linked list" do
    assert LinkedLists.getFirstItem(
      LinkedLists.getEquipmentList
    ) == "Space Helmet"
  end

  test "Removes the first item from the ilst" do
    assert LinkedLists.removeFirstItem(
      LinkedLists.getEquipmentList()
    ) == ["Space Suit", "Snacks", "Grappling Hook", "Probe"]
  end

  test "Adds the new item to the linked list" do
    assert LinkedLists.addSlow(
      LinkedLists.getEquipmentList,
      "Boots"
      ) == ["Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe", "Boots"]
  end

  test "Prepends an item to the list" do
    assert LinkedLists.prepend(
      LinkedLists.getEquipmentList(),
      "Boots"
      ) == ["Boots", "Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
  end

  test "Add the new item to the linked list (fast)" do
    assert LinkedLists.addFast(
      LinkedLists.getEquipmentList(),
      "Boots"
    ) == ["Boots", "Space Helmet", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
  end

  test "Deletes an item from a linked list at a given index" do
    assert LinkedLists.removeItem(
      LinkedLists.getEquipmentList(),
      2
    ) == ["Space Helmet", "Space Suit", "Grappling Hook", "Probe"]
  end

  test "Gets the length of a given linked list" do
    assert LinkedLists.equipmentCount(
      LinkedLists.getEquipmentList()
    ) == 5
  end

  test "Checks if an item is in a linked list" do
    assert LinkedLists.checkForItem(
      LinkedLists.getEquipmentList(),
      "Boots"
    ) == false
  end

  test "Checks if an item is in a linked list (true)" do
    assert LinkedLists.checkForItem(
      LinkedLists.getEquipmentList(),
      "Space Suit"
    ) == true
  end
end
