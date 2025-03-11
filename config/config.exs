# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :wikibase_restapi,
  base_url: "https://www.wikidata.org/w/rest.php/wikibase"

config :tesla, WikibaseRESTAPI.Connection,
  adapter: {Tesla.Adapter.Hackney, [proxy: System.get_env("HTTP_PROXY")]},
  middleware: [
    {Tesla.Middleware.BearerAuth, token: System.get_env("WIKIDATA_CLIENT_TOKEN")}
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
#
# import_config "#{config_env()}.exs"
