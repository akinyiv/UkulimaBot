defmodule UkulimaCoreTest do
  use ExUnit.Case
  doctest UkulimaCore

  test "greets the world" do
    assert UkulimaCore.hello() == :world
  end
end
