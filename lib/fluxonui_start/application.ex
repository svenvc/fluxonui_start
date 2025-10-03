defmodule FluxonUIStart.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      FluxonUIStartWeb.Telemetry,
      FluxonUIStart.Repo,
      {DNSCluster, query: Application.get_env(:fluxonui_start, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: FluxonUIStart.PubSub},
      # Start a worker by calling: FluxonUIStart.Worker.start_link(arg)
      # {FluxonUIStart.Worker, arg},
      # Start to serve requests, typically the last entry
      FluxonUIStartWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: FluxonUIStart.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    FluxonUIStartWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
