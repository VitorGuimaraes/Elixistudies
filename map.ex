# Default syntax: key => value (anything may be a key)
map1 = %{"January" => 0, "February" => 1, "March" => 2}
example1 = %{1..10 => "x", 2 => "y", [1,2,3] => "z"}

# Shorthand syntax
map2 = %{January: 0, February: 1, March: 2}

# Mixed syntax (shorhand should be the last)
map3 = %{"January" => 0, February: 1, March: 2}

# Using atom
map4 = %{:january => 0, :february => 1, :march => 2}

# Accessing values
map1["January"] # 0
map2.February   # 1
map4.march      # 2

# Returns all keys from map
map = %{a: 1, b: 2, c: 3}
Map.keys(map) # [:a, :b, :c]

# Returns whether the given key exists in the given map
map = %{a: 1, b: 2, c: 3}
Map.has_key?(map, :a) # true

# Returns all values from map
map = %{a: 1, b: 2, c: 3}
Map.values(map) # [1, 2, 3]

# Gets the value for a specific key in map
map = %{a: 1, b: 2, c: 3}
Map.get(map, :b) # 2

# Gets the value from key and updates it, all in one pass
map = %{a: 1, b: 2, c: 3}
Map.get_and_update(map, :a, fn current_value ->
  {current_value, "new value!"}
end)
# {1, %{a: "new value!", b: 2, c: 3}}


# Gets the value for a specific key in map
# If key is present in map then its value value is returned
# Otherwise, fun is evaluated and its result is returned
map = %{a: 1, b: 2, c: 3}
fun = fn ->
  13
end

Map.get_lazy(map, :a, fun) # 1
Map.get_lazy(map, :x, fun) # 13

# Fetches the value for a specific key in the given map
map = %{a: 1, b: 2, c: 3}
Map.fetch(map, :a) # {:ok, 1}

# If map contains key, the corresponding value is returned
# If map doesn't contain key, a KeyError exception is raised
map = %{a: 1, b: 2, c: 3}
Map.fetch!(map, :a) # 1

# Deletes the entry in map for a specific key
map = %{a: 1, b: 2, c: 3}
Map.delete(map, :a) # %{b: 2, c: 3}

# Drops the given keys from map.
# If keys contains keys that are not in map, they're simply ignored.
map = %{a: 1, b: 2, c: 3}
Map.drop(map, [:b, :d])

# Removes the value associated with key in map and returns the value and the updated map
map = %{a: 1, b: 2, c: 3}
Map.pop(map, :a) # {1, %{b: 2, c: 3}}

# Removes the value associated with key in map and returns the value and
# the updated map, or it raises if key is not present
map = %{a: 1, b: 2, c: 3}
Map.pop!(map, :x) # ** (KeyError) key :x not found in: %{a: 1, b: 2, c: 3}

# Lazily returns and removes the value associated with key in map
map = %{a: 1, b: 2, c: 3}
fun = fn ->
  13
end
Map.pop_lazy(map, :a, fun) # {1, %{b: 2, c: 3}}
Map.pop_lazy(map, :x, fun) # {13, %{a: 1, b: 2, c: 3}}

# Puts the given value under key in map
map = %{a: 1, b: 2, c: 3}
Map.put(map, :x, 12) # %{a: 1, b: 2, c: 3, x: 12}

# Puts the given value under key unless the entry key already exists in map
map = %{a: 1, b: 2, c: 3}
Map.put_new(map, :x, 12) # %{a: 1, b: 2, c: 3, x: 12}

# Updates the given value under the key only if the key already exists in map
map = %{a: 1, b: 2, c: 3}
%{map | b: 9} # %{a: 1, b: 9, c: 3}

# Evaluates fun and puts the result under key in map unless key is already present
map = %{a: 1, b: 2, c: 3}
fun = fn ->
  13
end
Map.put_new_lazy(map, :a, fun) # %{a: 1, b: 2, c: 3}
Map.put_new_lazy(map, :x, fun) # %{a: 1, b: 2, c: 3, x: 13}

# Checks if two maps are equal
map1 = %{a: 1, b: 2}
map2 = %{b: 2, a: 1}
Map.equal?(map1, map2) # true

# Puts a value under key only if the key already exists in map
map = %{a: 1, b: 2, c: 3}
Map.replace(map, :a, 10) # %{a: 10, b: 2, c: 3}

# Puts a value under key only if the key already exists in map
# If key is not present in map, a KeyError exception is raised
map = %{a: 1, b: 2, c: 3}
Map.replace!(map, :x, 10) # ** (KeyError) key :x not found in: %{a: 1, b: 2, c: 3}
