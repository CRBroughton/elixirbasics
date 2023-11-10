defmodule Bitstrings do

  def encodeInstruction(codePoint) do
    case codePoint do
      ?H -> 0b0000
      ?F -> 0b0001
      ?B -> 0b0010
      ?E -> 0b0100
      ?T -> 0b1000
      ?O -> 0b0011
    end
  end

  def encode(instructions, encodedValue \\ <<0::size(0)>>)
  def encode([], encodedValue), do: encodedValue
  def encode([head | tail], encodedValue) do
    encode(tail, <<encodedValue::bitstring, encodeInstruction(head)::4>>)
  end
end
