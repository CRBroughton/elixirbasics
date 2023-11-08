defmodule AllStrings do
  @spec firstLetter(String.t()) :: String.t()
  def firstLetter(value) do
    value
    |> String.trim()
    |> String.first()
  end

  @spec initial(String.t()) :: String.t()
  def initial(value) do
    "#{firstLetter(value) |> String.capitalize()}. "
  end

  @spec initials(String.t()) :: String.t()
  def initials(fullName) do
    list = String.split(fullName)

    list
    |> Enum.map(fn name -> initial(name) end)
    |> List.to_string()
    |> String.trim()
  end
end
