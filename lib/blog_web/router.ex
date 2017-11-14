defmodule BlogWeb.Router do
  use BlogWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug BlogWeb.Context
  end

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: BlogWeb.Schema

  scope "/api" do
    pipe_through :api

    forward "/", Absinthe.Plug,
      schema: BlogWeb.Schema
  end

end
