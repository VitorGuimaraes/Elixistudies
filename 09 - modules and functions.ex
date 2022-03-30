# Arity
# The term arity is a fancy way of saying the number of arguments a function accepts.
# For example, the function is_boolean was written as: is_boolean/1,
# where /1 indicates it's arity
# In Elixir, functions in the same Module can have the same name, but with different arity.
# For example, we can split a string by white space (String.split/1):
String.split("Hello world")       # ["Hello", "world"]
# But we can pass a value to split on (String.split/2):
String.split("Hello; world", ";") # ["Hello", "world"]
# Lower arity functions typically delegate to higher arity
# functions by providing default arguments.
# String.split/1 accepts a single argument and delegates to the
# String.split/2 passing a default pattern of a blank space.


# Module
list = [3, 4, 5]

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


# Implict anonimous function with Capture Operator &

# The first & declare an anonimous function
# The & inside of function capture parameter value
add_one = fn x -> x + 1 end # add_one.(1) # 2
add_one = &(&1 + 1)         # add_one.(1) # 2

list = ["1", "pizza", "18"]
list |> List.update_at(2, fn elem -> String.to_integer(elem) end) # ["1", "pizza", 18]
list |> List.update_at(2, &String.to_integer/1)                   # ["1", "pizza", 18]
