for n <- [1, 2, 3, 4], do: n * n # [1, 4, 9, 16]

# Generators
for n <- 1..4, do: n * n # [1, 4, 9, 16]

# Filters
values = [good: 1, good: 2, bad: 3, good: 4]
for {:good, n} <- values, do: n * n # [1, 4, 16]

for n <- 0..5, rem(n, 3) == 0, do: n * n # [0, 9]

for i <- [:a, :b, :c], j <- [1, 2], do:  {i, j} # [a: 1, a: 2, b: 1, b: 2, c: 1, c: 2]
