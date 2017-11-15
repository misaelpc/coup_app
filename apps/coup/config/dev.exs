use Mix.Config

# Configure your database
config :coup, Coup.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "coup_dev",
  hostname: "localhost",
  pool_size: 10
