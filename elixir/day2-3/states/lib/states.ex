defmodule States do
  use Application
  @moduledoc """
  Documentation for `States`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> States.hello()
      :world

  """
  def start(_type, videos) do
  import Supervisor.Spec, warn: false

  children = [
  # define workers and children to be supervised
  worker(States.Server, [videos])
  ]

  opts = [strategy: :one_for_one, name: States.Supervisor]
  Supervisor.start_link(children, opts)
  end
end
