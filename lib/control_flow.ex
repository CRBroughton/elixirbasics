defmodule Equipment do
  @enforce_keys [:weight, :unit_type, :quantity]
  defstruct weight: 0,
            unit_type: :kg,
            quantity: 0

  @type t() :: %__MODULE__{
          weight: integer(),
          unit_type: :kg | :lb,
          quantity: integer()
        }
end

defmodule ControlFlow do
  @spec checkMaxLoad(integer()) :: String.t()
  def checkMaxLoad(load) do
    if load < 55, do: "Safe to fly!", else: "Too heavy to fly :("
  end

  @spec checkFuelLevel(integer()) :: String.t()
  def checkFuelLevel(percent) do
    cond do
      percent == 100 -> "full tank"
      percent > 75 -> "3/4 tank"
      percent > 50 -> "1/2 tank"
      percent > 25 -> "1/4 tank"
      true -> "empty tank"
    end
  end

  @spec errorCodeCheck(integer()) :: :created | :no_content | :ok | :unknown
  def errorCodeCheck(value) do
    case value do
      200 -> :ok
      201 -> :created
      204 -> :no_content
      n when is_integer(n) and n > 299 -> :error
      _ -> :unknown
    end
  end

  defp convertKGtoLB(kg), do: kg * 2.2

  @spec equipmentCheck(Equipment.t()) :: :equipment_cleared | :failed
  def equipmentCheck(equipment) do
    case equipment do
      %Equipment{
        weight: weight,
        unit_type: unit_type,
        quantity: quantity
      }
      when weight / quantity < 16 and unit_type == :kg ->
        :equipment_cleared

      %Equipment{
        weight: weight,
        unit_type: unit_type,
        quantity: quantity
      }
      when unit_type == :lb ->
        if convertKGtoLB(weight) / quantity < 16, do: :equipment_cleared, else: :failed

      _ ->
        :unknown
    end
  end
end
