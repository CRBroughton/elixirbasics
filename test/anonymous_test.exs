defmodule AnonymousTest do
  use ExUnit.Case
  doctest Anonymous

  test "Returns the first item in the list" do
    assert Anonymous.getFirstItem(
      Anonymous.getEquipmentList
      ) == :space_helmet
  end

  test "Converts the list of atoms to an uppercase string list" do
    assert Anonymous.atomToString(
      Anonymous.getEquipmentList
      ) == ["SPACE HELMET", "SPACE SUIT", "SNACKS", "GRAPPLING HOOK", "PROBE"]
  end
end
