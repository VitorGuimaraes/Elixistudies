# Lists
list = [1, 2, 3]
[head | tail] = list  # head: [1] tail: [2, 3]
[a, b, c] = list # a=1, b=2, c=3

# Maps
map = %{a: 1, b: 2, c: 3}
%{a: x, b: y} = map # x=1, y=2

# pin operator
^x = 5 # now you can't reassign x value


# Anonymous function
multiply = fn a, b -> a * b end
multiply.(2, 3) # 6

# Pattern matching with anonymous function
read_file = fn
  {:ok, result} -> "Success #{result}"
  {:error, reason} -> "Error #{reason}"
end

read_file.(File.read("test.txt")) # prints the content of the file
