# Returns the sum of all elements.
Enum.sum([1, 2, 3]) # 6

# Returns the product of all elements.
Enum.product([2, 3, 4]) # 24

# Returns a subset list of the given enumerable by index_range.
list = [1, 2, 3]
Enum.slice(list, 0..1) # [1, 2]

# Returns a list of elements in enumerable in reverse order.
list = [1, 2, 3]
Enum.reverse(list) # [3, 2, 1]

# Sorts the enumerable according to Erlang's term ordering.
list = [2, 3, 1]
Enum.sort(list) # [1, 2, 3]

# Returns the size of the enumerable.
list = [1, 2, 3]
Enum.count(list) # 3

# Determines if the enumerable is empty.
list = [1, 2, 3]
Enum.empty?(list) # false

# Converts enumerable to a list.
Enum.to_list(1..3) # [1, 2, 3]

# Invokes the given fun for each element in the enumerable.
Enum.each(["some", "example"], fn x -> IO.puts(x) end)

# Applies the given function to each element in the enumerable, storing
# the result in a list and passing it as the accumulator for the next
# computation. Uses the first element in the enumerable as the starting value.
Enum.scan(1..5, &(&1 + &2))

# map
# filter
# reduce
