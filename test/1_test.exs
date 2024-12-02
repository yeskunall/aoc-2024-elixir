defmodule AdventOfCode2024Test do
  use ExUnit.Case
  alias AdventOfCode2024

  describe "total_distance/2" do
    test "calculates the total distance between two sorted lists" do
      left_list = [3, 4, 2, 1, 3, 3]
      right_list = [4, 3, 5, 3, 9, 3]

      assert AdventOfCode2024.total_distance(left_list, right_list) == 11
    end
  end

  describe "similarity_score/2" do
    test "calculates the similarity score based on occurrences" do
      left_list = [3, 4, 2, 1, 3, 3]
      right_list = [4, 3, 5, 3, 9, 3]

      assert AdventOfCode2024.similarity_score(left_list, right_list) == 31
    end
  end
end
