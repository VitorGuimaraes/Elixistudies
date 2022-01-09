# Strings should be in double quotes
# Single quotes brings the ASCII code

# Concatenate strings
"Hello" <> " " <> "world!" # Hello world!

# Interpolation
name = "Joseph"
"Hello #{name}"
"2+2 = #{2 + 2}"

# Length
country = "Deutschland"
String.length(country)

# Replace
String.replace("2027_12-25", "_", "-")

# Slice
String.slice("elixir", 0..3) # elix

# Split
String.split("foo bar") # ["foo", "bar"]

# Codepoints
String.codepoints("hello") # ["h", "e", "l", "l", "o"]

# Trim
String.trim("\n  abc\n  ") # "abc"

# Starts with?
String.starts_with?("elixir", "eli") # true

# Contains?
String.contains?("elixir of life", "of") # true

# Match? (regular expression)
String.match?("predator", ~r/pred/)

# Reverse
String.reverse("abcd") # "dcba"

# to_integer
String.to_integer("17") # 17

# to_float
String.to_float("3.4") # 3.4

# Capitalize
String.capitalize("netflix") # Netflix

# Downcase
String.downcase("NETFLIX") # netflix

# Uppercase
String.upcase("netflix") # NETFLIX
