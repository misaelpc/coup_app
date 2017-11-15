use Mix.Config

config :coup, Coup.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "coup_prod",
  hostname: "localhost",
  pool_size: 10
#import_config "prod.secret.exs"
