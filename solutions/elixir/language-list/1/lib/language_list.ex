defmodule LanguageList do
  @spec new() :: list(String.t())
  def new() do
    []
  end

  @spec add(list(String.t()), String.t()) :: list(String.t())
  def add(list, language) do
    [language | list]
  end

  @spec remove(list(String.t())) :: list(String.t())
  def remove(list) do
    [_ | tail] = list
    tail
  end

  @spec first(list(String.t())) :: String.t()
  def first(list) do
    [head | _] = list
    head
  end

  @spec count(list(String.t())) :: integer()
  def count(list) do
    length(list)
  end

  @spec functional_list?(list(String.t())) :: boolean()
  def functional_list?(list) do
    "Elixir" in list
  end
end
