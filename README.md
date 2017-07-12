# DatabaseServer

I decided not to use **GenServer** and build a server from scratch. I'm also aware
that the code you are about to see might not be efficient or may not be the best way.

## Description

This is a mock database server that accepts string messages and sends it back
using a specified time interval (2 seconds at this time).

## Usage

```elixir
# start the database server
server_pid = DatabaseServer.start()

# send query to the server
DatabaseServer.send_query(server_pid, "hello world")

# get result
DatabaseServer.get_result()
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `database_server` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:database_server, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/database_server](https://hexdocs.pm/database_server).

