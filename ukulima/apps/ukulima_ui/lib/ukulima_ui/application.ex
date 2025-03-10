defmodule UkulimaUi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      UkulimaUiWeb.Telemetry,
      UkulimaUi.Repo,
      {DNSCluster, query: Application.get_env(:ukulima_ui, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: UkulimaUi.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: UkulimaUi.Finch},
      # Start a worker by calling: UkulimaUi.Worker.start_link(arg)
      # {UkulimaUi.Worker, arg},
      # Start to serve requests, typically the last entry
      UkulimaUiWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: UkulimaUi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    UkulimaUiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
