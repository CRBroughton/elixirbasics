defmodule AllStringsTest do
  use ExUnit.Case
  doctest AllStrings

  test "It gets the first letter of a string, and trims the ends" do
    assert AllStrings.firstLetter("Craig ") == "C"
  end

  test "It gets the first letter of a string and capitalises it" do
    assert AllStrings.initial("craig") == "C. "
  end

  test "Returns the initials of a full name, spaced and dotted" do
    assert AllStrings.initials("Craig Broughton") == "C. B."
  end

end
