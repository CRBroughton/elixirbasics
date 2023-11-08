defmodule RecursionTest do
  use ExUnit.Case
  doctest Recursion

  test "Counts the number of items in a list" do
    assert Recursion.equipmentCount([1, 2, 3]) == 3
  end

  test "Formats the linked list with _'s" do
    assert Recursion.formatEquipmentList(
      ["Craig Broughton", "Peter Piper"]
    ) == ["craig_broughton", "peter_piper"]
  end

  test "Gets the count of an item in a list" do
    assert Recursion.occurenceCount([1, 2, 3], 1) == 1
  end

  test "Gets the count of multiple items in a list" do
    assert Recursion.occurenceCount([1, 1, 2, 3], 1) == 2
  end

  test "Returns 0 if the list is empty" do
    assert Recursion.occurenceCount([], 1) == 0
  end
end
