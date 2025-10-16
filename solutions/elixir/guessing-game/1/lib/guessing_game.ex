defmodule GuessingGame do
  @spec compare(integer(), atom()) :: String.t()
  @spec compare(integer(), integer()) :: String.t()
  def compare(secret_number, guess \\ :no_guess)

  def compare(secret_number, guess) when secret_number == guess do
    "Correct"
  end

  def compare(secret_number, guess) when abs(secret_number - guess) == 1 do
    "So close"
  end

  def compare(secret_number, guess) when secret_number - guess < 1 do
    "Too high"
  end

  def compare(secret_number, guess) when secret_number - guess > 1 do
    "Too low"
  end

  def compare(_secret_number, guess) when guess == :no_guess do
    "Make a guess"
  end
end
