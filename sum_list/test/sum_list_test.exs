defmodule SumListTest do
  use ExUnit.Case
  doctest SumList # runs all the code bellow and checks if it runs with success

  # syntax: describe "function/argument_parity" do
  describe "call/1" do
    test "returns the list sum" do
      list = [1, 2, 3]
      response = SumList.call(list)
      expected_response = 6

      assert response == expected_response

    end
  end
end
