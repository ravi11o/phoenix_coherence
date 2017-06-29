# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_coherence,
  ecto_repos: [PhoenixCoherence.Repo]

# Configures the endpoint
config :phoenix_coherence, PhoenixCoherence.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "32QRDxbx3CGLFnsuWCD7AvepD2NHWkIGcsoAWhtgMMwZcDMv5SNvUDESwPA8nSbA",
  render_errors: [view: PhoenixCoherence.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixCoherence.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: PhoenixCoherence.User,
  repo: PhoenixCoherence.Repo,
  module: PhoenixCoherence,
  logged_out_url: "/",
  email_from_name: "Podies.Inc",
  email_from_email: "ravi@podies.io",
  opts: [:rememberable, :authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :invitable, :registerable]

config :coherence, PhoenixCoherence.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "0f8ba7b6e78c29ae3b90fed2732a6c2b"
# %% End Coherence Configuration %%
