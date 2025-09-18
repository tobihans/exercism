defmodule FreelancerRates do
  @spec daily_rate(number()) :: number()
  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end

  @spec apply_discount(number(), number()) :: number()
  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100
  end

  @spec monthly_rate(number(), number()) :: number()
  def monthly_rate(hourly_rate, discount) do
    hourly_rate
    |> daily_rate()
    |> (&(&1 * 22)).()
    |> (&apply_discount(&1, discount)).()
    |> Float.ceil()
    |> trunc()
  end

  @spec days_in_budget(number(), number(), number()) :: number()
  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate = hourly_rate |> daily_rate() |> (&apply_discount(&1, discount)).()
    (budget / daily_rate) |> (&Float.floor(&1, 1)).()
  end
end
