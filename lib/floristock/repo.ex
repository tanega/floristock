defmodule Floristock.Repo do
  use Ecto.Repo,
    otp_app: :floristock,
    adapter: Ecto.Adapters.Postgres
end
