defmodule PhxSmpl.Repo do
  use Ecto.Repo,
    otp_app: :phx_smpl,
    adapter: Ecto.Adapters.Postgres
end
