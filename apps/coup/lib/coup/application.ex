defmodule Coup.Application do
  @moduledoc """
  The Coup Application Service.

  The coup system business domain lives in this application.

  Exposes API to clients such as the `CoupWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Coup.Repo, []),
    ], strategy: :one_for_one, name: Coup.Supervisor)
  end
end
