defmodule UkulimaUi.Repo do
  use Ecto.Repo,
    otp_app: :ukulima_ui,
    adapter: Ecto.Adapters.Postgres
end
