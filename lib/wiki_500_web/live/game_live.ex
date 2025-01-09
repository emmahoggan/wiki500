defmodule Wiki500Web.GameLive do
  use Wiki500Web, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="h-full flex flex-col">
      <h1 class="text-2xl font-bold mb-4">Game</h1>
      <div class="flex-grow">
        <iframe
          src="https://en.wikipedia.org/wiki/Emirp"
          class="w-full h-full border-2 border-gray-300 rounded-lg"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        >
        </iframe>
      </div>
    </div>
    """
  end
end
