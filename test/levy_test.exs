defmodule LevyTest do
  use ExUnit.Case
  doctest Levy

  test "identical words have 0 distance" do
    assert Levy.distance("anna", "anna") == 0
  end

  test "distant words" do
    assert Levy.distance("congratulations", "conmgeautlatins") == 5
  end
  test "distant words 2" do
    assert Levy.distance("book", "back") == 2
  end
end
