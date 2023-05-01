defmodule States.Server do
  use GenServer
  require VidStore

  # GenServer callback to do app-specific initialization
  def start_link(videos) do
  GenServer.start_link(__MODULE__, videos, name: :video_store)
  end

  # initializes server to contain the videos list
  def init(videos) do
  {:ok, videos}
  end

  # implementing callback from GenServer to fetch a particular video
  def handle_call({action, item}, _from, videos) do
  video = videos[item] # get the selected video
  new_video = apply VidStore, action, [video] # invoke state machine with action over video
  {:reply, new_video, Keyword.put(videos, item, new_video)} # replace value in list and return
  end

  # implementing callback from GenServer to ignore a result
  def handle_cast({:add, video}, videos) do
  {:noreply, [video|videos]}
  end
end
