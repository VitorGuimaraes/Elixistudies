# lib folder: main code
# test folder: tests from module of main code
# exs files: explicit that it's a script file instead a module file
# mix.exs file: project configs
# .formatter.exs: code formatter

# Create a new project
mix new project_name

# Run tests
mix test

# Compile project
mix compile

# Format code
mix format

# How to use your module in iex
iex -S mix

# Use your updated module: in iex, type "recompile"
recompile
