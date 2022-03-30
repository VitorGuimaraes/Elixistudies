# /lib: main code
# /test: tests from module of main code
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
recompile force: true

# Install/update dependencies
mix deps.get


## Phoenix Project ###
# Install Phenix:
mix archive.install hex phx_new

# Create a new Phoenix project
# --no-html: do not generate HTML views
mix new phx.new project_name

# If you get red lines in the code after create a Phoenix project, do it:
# mix deps.get
# mix recompile
# wait it compile, so the errors will be solved

# Config Ecto
# If you are using PostgreSQL and you changed the password,
# update it in config/dev.exs and config/test.exs.
# Than, run "mix ecto.config" to check if is everything ok

# Credo
# Run: mix credo.gen.config
# In credo.exs change ModuleDoc to false

# Run Phoenix Server
mix phx.server

# Phoenix Config

# Check current env (iex -S mix)
Mix.env

# Change env
# When change env, the config used is from config/env file (test.exs, dev.exs, prod.exs)
# config/config.exs is the general configuration and is applicable for all envs
MIX_ENV=test iex -S mix

# /_build: all your depencies are there
# /priv: all that you need that be in production in your release but isn't in your code base,
# you should put here (like assets, translate files, migrations, seeds...)

# mix.lock: Defines the specific version of the used libs
