# WikibaseRESTAPI

OpenAPI definition of Wikibase REST API

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `wikibase_restapi` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:wikibase_restapi, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/wikibase_restapi][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :wikibase_restapi, base_url: "https://wikibase.example/w/rest.php/wikibase"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`WikibaseRESTAPI.Connection.new/1`:

```elixir
client = WikibaseRESTAPI.Connection.new(base_url: "https://wikibase.example/w/rest.php/wikibase")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/wikibase_restapi
