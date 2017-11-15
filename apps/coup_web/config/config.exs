# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coup_web,
  namespace: CoupWeb,
  ecto_repos: [Coup.Repo]

# Configures the endpoint
config :coup_web, CoupWeb.Endpoint,
  url: [host: "misaelpc.dev"],
  secret_key_base: "bFMHhw9ZUj6qV1ZfQJfgACnIf4n0lWekFCe9Et2pUAdjpjg7bdcqk6y0VHTTxZKs",
  render_errors: [view: CoupWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CoupWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :coup_web, :generators,
  context_app: :coup

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
