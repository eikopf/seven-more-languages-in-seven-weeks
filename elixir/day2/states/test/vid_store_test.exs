defmodule VidStoreTest do
  use ExUnit.Case
  import Should

  should "rent video" do
  rented_vid = VidStore.renting(video)
  assert rented_vid.times_rented == 1
  end

  def video, do: %Video{title: "Breaking Bad S1"}
end
