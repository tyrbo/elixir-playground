defmodule Chop do
  def guess(actual, _..max) do
    solve(actual, div(max, 2), max)
  end

  defp solve(actual, guess, _) when actual == guess do
    IO.puts guess
  end

  defp solve(actual, guess, _) when actual < guess do
    IO.puts "Is it #{guess}?"

    new_guess = div(guess, 2)

    solve(actual, new_guess, new_guess)
  end

  defp solve(actual, guess, max) when actual > guess do
    IO.puts "Is it #{guess}?"

    new_guess = guess + div(max - guess, 2)

    solve(actual, new_guess, max)
  end
end
