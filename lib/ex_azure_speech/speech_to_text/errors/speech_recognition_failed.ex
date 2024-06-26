defmodule ExAzureSpeech.SpeechToText.Errors.SpeechRecognitionFailed do
  @moduledoc """
  This error fires when the Speech Service fails to recognize a speech input.
  """
  @moduledoc section: :speech_to_text
  use Splode.Error, fields: [:reason], class: :internal

  @type t() :: Splode.Error.t()

  @doc false
  def message(%{reason: reason}) do
    "Failed to recognize speech: #{reason}"
  end
end
