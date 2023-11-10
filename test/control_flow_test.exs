defmodule ControlFlowTest do
  use ExUnit.Case
  doctest ControlFlow

  test "Will allow the plane to fly if the load is under 55" do
    assert ControlFlow.checkMaxLoad(54) == "Safe to fly!"
  end

  test "Will not allow the plane to fly if the load is above 55" do
    assert ControlFlow.checkMaxLoad(56) == "Too heavy to fly :("
  end

  test "Will check for a full tank" do
    assert ControlFlow.checkFuelLevel(100) == "full tank"
  end

  test "Will check for a 3/4 tank" do
    assert ControlFlow.checkFuelLevel(76) == "3/4 tank"
  end

  test "Will check for a half tank" do
    assert ControlFlow.checkFuelLevel(51) == "1/2 tank"
  end

  test "Will check for 1/4 tank" do
    assert ControlFlow.checkFuelLevel(26) == "1/4 tank"
  end

  test "Will check for empty tank" do
    assert ControlFlow.checkFuelLevel(1) == "empty tank"
  end

  test "will return :ok when pass 200" do
    assert ControlFlow.errorCodeCheck(200) == :ok
  end

  test "will return :created when pass 201" do
    assert ControlFlow.errorCodeCheck(201) == :created
  end

  test "will return :no_content when pass 204" do
    assert ControlFlow.errorCodeCheck(204) == :no_content
  end

  test "Will return :error when pass > 299" do
    assert ControlFlow.errorCodeCheck(300) == :error
  end

  test "Will return :unknown when pass anything else" do
    assert ControlFlow.errorCodeCheck("asdsd") == :unknown
  end

  test "clears the equipment check" do
    assert ControlFlow.equipmentCheck(%Equipment{
             quantity: 15,
             unit_type: :kg,
             weight: 1
           }) == :equipment_cleared
  end

  test "fails the equipment test" do
    assert ControlFlow.equipmentCheck(%Equipment{
             quantity: 15,
             unit_type: :kg,
             weight: 100
           }) == :equipment_cleared
  end

  test "Fails the equipment check if the equipment doesnt match" do
    assert ControlFlow.equipmentCheck(10) == :unknown
  end
end
