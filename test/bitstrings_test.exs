defmodule BitstringsTest do
  use ExUnit.Case
  doctest Bitstrings


  test "returns a encoded bitstring for a command" do
    assert Bitstrings.encode('FEHTOFB') == <<20, 8, 49, 2::size(4)>>
  end
end
