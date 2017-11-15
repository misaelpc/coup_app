use Mix.Config

config :coup, ecto_repos: [Coup.Repo]

import_config "#{Mix.env}.exs"
