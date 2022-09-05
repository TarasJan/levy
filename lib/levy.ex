defmodule Levy do
  @moduledoc """
  Documentation for `Levy`.
  """

  @doc """
  Levenstein distance calculation for 2 strings

  ## Examples

      iex> Levy.distance("anna", "anna")
      0

  """
  def distance(a, b) do
    case [a, b] do
      ["", x] ->
        String.length(x)
      [x, ""] ->
        String.length(x)
      [<<c :: utf8, r::bytes >>, <<c :: utf8, rb::bytes >>] ->
        distance(r, rb)
      _ ->
        <<_fa::utf8, ta::bytes>> = a
        <<_fb::utf8, tb::bytes>> = b
        1 + Enum.min(
          [
            distance(a, tb),
            distance(ta, b),
            distance(ta, tb)
          ]
        )
    end
  end
end
