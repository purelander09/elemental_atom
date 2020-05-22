defmodule ElementalAtom.Repo do
  use Ecto.Repo,
    otp_app: :elemental_atom,
    adapter: Ecto.Adapters.Postgres
end
