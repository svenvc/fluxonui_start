defmodule FluxonUIStart.Repo do
  use Ecto.Repo,
    otp_app: :fluxonui_start,
    adapter: Ecto.Adapters.Postgres
end
