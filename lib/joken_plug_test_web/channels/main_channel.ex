defmodule JokenPlugTestWeb.MainChannel do
  use Phoenix.Channel

  def join(_channel, _message, socket) do
    IO.puts "tacos 4ever"
    {:ok, socket}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    IO.puts "tacos 4ever"
    broadcast!(socket, "new_msg", %{body: body})
    {:noreply, socket}
  end

  # intercept ["new_msg"]
  
  # def handle_out("new_msg", %{"body" => body}, socket) do
  #   IO.puts "tacos 4ever"
  #   broadcast!(socket, "new_msg", %{body: body})
  #   {:noreply, socket}
  # end
end
