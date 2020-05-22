defmodule ElementalAtom.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ElementalAtom.Repo,
      # Start the Telemetry supervisor
      ElementalAtomWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ElementalAtom.PubSub},
      # Start the Endpoint (http/https)
      ElementalAtomWeb.Endpoint
      # Start a worker by calling: ElementalAtom.Worker.start_link(arg)
      # {ElementalAtom.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElementalAtom.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ElementalAtomWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
