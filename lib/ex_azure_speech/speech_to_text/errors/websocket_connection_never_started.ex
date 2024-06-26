defmodule ExAzureSpeech.SpeechToText.Errors.WebsocketConnectionNeverStarted do
  @moduledoc """
  This error fires up when the websocket connection with the cognitive services fails to be established.
  """
  @moduledoc section: :speech_to_text
  use Splode.Error, class: :internal

  @type t() :: Splode.Error.t()

  @doc false
  def message(_cause) do
    "The websocket connection was never started."
  end
end
