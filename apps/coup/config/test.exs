use Mix.Config

# Configure your database
config :coup, Coup.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "coup_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
