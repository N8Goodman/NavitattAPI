defmodule NavitatBackWeb.AuthenticateInstagramController do
  use NavitatBackWeb, :controller

  alias NavitatBack.Clients


  def create(conn, %{"artist_id" => artist_id}) do
    IO.puts "WOOOOH"
    IO.inspect artist_id
    artist = Clients.get_artist!(artist_id)
    
  end
end
