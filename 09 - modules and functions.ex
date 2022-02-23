# list = [3, 4, 5]

# iteration 1:
# list = [3, 4, 5]; head = 3; tail = [4, 5]
# -> acc = 0 + 3; sum([4, 5], 3)

# iteration 2:
# list = [4, 5]; head = 4; tail = [5]
# -> acc = 3 + 4; sum([5], 7)

# iteration 3:
# list = [5]; head = 5; tail = []
# -> acc = 7 + 5; sum([], 12)

# iteration 4:
# list = [];
# -> acc = 7 + 5; sum([], 12)

defmodule SumList do
  def call(list), do: sum(list, 0)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end
end

# obs: search about tail call optimization and check if it's using
