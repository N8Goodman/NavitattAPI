# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :navitat_back,
  ecto_repos: [NavitatBack.Repo]

# Configures the endpoint
config :navitat_back, NavitatBackWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dDb7LR8uqyjnVsViHczTqdj2YCGhJsukMh2SIUm39OPyePX9Z3Gvey8wJlbQOnQe",
  render_errors: [view: NavitatBackWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NavitatBack.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :navitat_back, NavitatBack.Guardian,
       issuer: "navitat_back",
       secret_key: "p7t0n4Zl643jfmnYpYjYN9LNB3/g4h6NhxtWreo6Ea/cpq4C+/deRsV/B7Yc5NUG"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
