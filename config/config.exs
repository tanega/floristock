# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :floristock,
  ecto_repos: [Floristock.Repo]

# Configures the endpoint
config :floristock, FloristockWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "p3PtTcQHxsFVhksfTXPZx4AXTPzYBBiCfZfBrhYAg9p3QGSlD8z+CeKS1wE62ece",
  render_errors: [view: FloristockWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Floristock.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
