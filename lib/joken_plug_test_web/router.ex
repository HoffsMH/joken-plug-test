defmodule JokenPlugTestWeb.Router do
  use JokenPlugTestWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", JokenPlugTestWeb do
    pipe_through :api
  end
end
