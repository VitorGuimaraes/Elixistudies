# https://dorgan.netlify.app/posts/2021/03/making-sense-of-elixir-(improper)-lists/

# Lists are linked lists
# Lists are immutable

# sum/subtract lists
[1, 2, 3] ++ [true, 5, false] # [1, 2, 3, true, 5, false]
[3, 4, 5] -- [7, 5, 9] # [3, 4]

# Prepend to a list
x = false
list = [1, 2, 3]
[x | list] # [false, 1, 2, 3]

# head and tail
list = ["apple", "melon", "orange", "strawberry"]
hd(list) # ["apple"]
hd list  # ["apple"]
tl(list) # ["melon", "orange", "strawberry"]
tl list  # ["melon", "orange", "strawberry"]

[head | tail] = [1, 2, 3, 4, 5]  # head: [1] tail: [2, 3, 4, 5]

# Use underline to ignore part of the list
[head | _tail] = [1, 2, 3, 4, 5] # head: [1] tail: error

# Cons Cells
# Each con cell stores a pointer to the value and a pointer to the next cons cell
list = [1 | [2 | [3 | []]]]

# Improper lists
# Lists that haven't an empty list as the second element in the last cons cell
[1, 2, 3] ++ 5      # [1, 2, 3 | 5]
[1 | [2 | [3 | 5]]] # [1, 2, 3 | 5]

# Returns true if list is an improper list. Otherwise returns false
List.improper?([1, 2 | 3]) # true

# Check if value is in list
3 in [1, 3, 5] # true

# Length
list = [1, 2, 3, 4, 5]
length(list) # 5

# Deletes the given element from the list. Returns a new list without the element
list = [1, 2, 3]
List.delete(list, 2) # [1, 3]

# Duplicates the given element n times and return a list
List.duplicate("hello", 3) # ["hello", "hello", "hello"]

# Returns the first element in list or default if list is empty.
list = ["a", "b", "c"]
List.first(list) # "a"

# Returns the last element in list or default if list is empty.
list = ["a", "b", "c"]
List.last(list) # "c"

# Returns a list with value inserted at the specified index
list = [1, 2, 3]
List.insert_at(list, 0, "a") # ["a", 1, 2, 3]

# Returns and removes the value at the specified index in the list.
list = ["a", "b", "c"]
List.pop_at(list, 1) # {"b", ["a", "c"]}

# Unpack list
[a, b, c] = [1, 2, 3] # a = 1, b = 2, c = 3

# Returns a list with a replaced value at the specified index.
list = ["a", "b", "c"]
List.replace_at(list, 0, "x") # ["x", "b", "c"]

# Zips corresponding elements from each list in list_of_lists.
List.zip([[1, 2], [3, 4], [5, 6]]) # [{1, 3, 5}, {2, 4, 6}]
