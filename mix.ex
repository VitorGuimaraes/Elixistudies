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


### Phoenix Project ###
# Install Phenix:
mix archive.install hex phx_new

# Create a new Phoenix project
# --no-html: do not generate HTML views
mix phx.new project_name

# If you get red lines in the code after create a Phoenix project, do it:
# mix deps.get
# mix compile
# wait it compile, so the errors will be solved

# Config Ecto
# If you are using PostgreSQL and you changed the password,
# update it in config/dev.exs and config/test.exs.
# Than, run "mix ecto.setup" to check if is everything ok

# Credo
# Run: mix credo.gen.config
# In credo.exs change ModuleDoc to false

# Run Phoenix Server
mix phx.server

## Phoenix Config ##

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


# Ecto Migrations

# Creates a migration file in /priv/repo/migrations
# Migration files maps how the database is builded
# It creates the migration file with a timestamp, that is used by Ecto
# for know the order of creation of the tables
mix ecto.gen.migration migration_name
# ex: mix ecto.gen.migration create_users_table

# Create database
mix ecto.create

# Run migration
mix ecto.migrate

# Reset local database
mix ecto.reset

# Drop database
mix ecto.drop



### Creating a Phoenix project from zero ###
1) Install dependencies:
  To install Elixir:
    wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
    sudo apt update
    sudo apt install esl-erlang && sudo apt install elixir

  To install/upgrade Hex package manager:
    mix local.hex

  To install Phoenix framework:
    mix archive.install hex phx_new

  To install PostgreSQL (Linux):
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo apt update && sudo apt install postgresql-12  postgresql-client-12 postgresql-12 libpq-dev postgresql-server-dev-12 postgresql-contrib -y

    sudo -u postgres psql
    ALTER USER postgres WITH PASSWORD 'your_password';

    Install PgAdmin (optional):
    sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add && sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update' && sudo apt install pgadmin4

  To install inotify-tools:
    It enables Phoenix Live Reloading feature
    sudo apt install inotify-tools

2) Create the project:
mix phx.new project_name --no-html

3) Install and configure Credo:
https://github.com/rrrene/credo
run: mix credo.gen.config
In credo.exs, set ModuleDoc to false:
{Credo.Check.Readability.ModuleDoc, false}

4) Install Pkbdf2 to use UUID primary and foreign keys
https://github.com/riverrun/pbkdf2_elixir

5) Configure PostgreSQL
In config/dev.exs and config/test.exs configure your username, password, database and hostname of postgreSQL.
If you are using other port, set it too.

6) Test database configuration
run: mix ecto.setup

7) Config Ecto to use UUID as primary and foreign key in config/config.exs:
config :app_name, App_name.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

8) Folder organization
├── _build
├── .elixir_ls
├── assets
├── config/
│   ├── config.exs   # General application configuration
│   ├── dev.exs
│   ├── prod.exs
│   ├── runtime.exs
│   └── test.exs
├── deps
├── lib/
│   ├── project_name/
│   │   ├── application.ex # business model
│   │   └── repo.ex        # communication with database
│   └── project_name_web/
│       ├── controllers    # controllers of the application
│       └── views/
│           └── router.ex  # routers of the application
├── priv/ # assets, translate files, migrations...
│   └── repo/
│       └── migrations
├── test
├── credo.exs
├── mix.exs
└── mix.lock # define the running version of each lib

9) Create tables in database and define your migrations (priv/repo/migrations)
run: mix ecto.gen.migration create_table_name

10) Create each schema in lib/project_name/schema_name


*) Routes:
- Criar em lib/app_name_web/router.ex
- Abaixo de "pipe_through :api" crie a rota:
  get "/", WelcomeController, :index
  explicando: get "address" ControllerName, :action

*) Controllers
- Criar em lib/app_name/controllers/controller_name.ex:
defmodule AppnameWeb.ControllerName do
  use RockeliveryWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> text("Wellcome :D")
  end
end
