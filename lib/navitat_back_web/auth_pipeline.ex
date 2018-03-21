defmodule NavitatBack.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :NavitatBack,
  module: NavitatBack.Guardian,
  error_handler: NavitatBack.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
