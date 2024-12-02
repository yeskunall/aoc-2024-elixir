defmodule AdventOfCode2024 do
  def total_distance(first_list, second_list) do
    first_list
    |> Enum.sort()
    |> Enum.zip(Enum.sort(second_list))
    |> Enum.map(fn {x, y} -> abs(x - y) end)
    # |> Enum.reduce(fn x, acc -> acc + x end)
    |> Enum.sum()
  end

  def similarity_score(first_list, second_list) do
    first_list
    |> Enum.map(fn x -> x * Enum.count(second_list, fn y -> x == y end) end)
    # |> Enum.reduce(fn x, acc -> acc + x end)
    |> Enum.sum()
  end
end
