# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elemental_atom,
  ecto_repos: [ElementalAtom.Repo]

# Configures the endpoint
config :elemental_atom, ElementalAtomWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "p91SNbYBRls9ZJXzg1d5yq/2FMgjAwopFWVF1er0PwfDOeP3b1xGVLHLAhqXhJUa",
  render_errors: [view: ElementalAtomWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElementalAtom.PubSub,
  live_view: [signing_salt: "Q+mrqLf0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
