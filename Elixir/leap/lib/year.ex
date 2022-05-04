defmodule Year do
  @doc """
  Returns whether 'year' is a leap year.

  A leap year occurs:

  on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
      unless the year is also evenly divisible by 400
  """
  @spec leap_year?(non_neg_integer) :: boolean
  def leap_year?(year) when is_integer(year) do
    case [rem(year, 4), rem(year, 100), rem(year, 400)] do
      [0, 0, 0] ->
        "#{year} is leap year!!"

      [0, a, a] ->
        "#{year} is leap year!!"

      [0, a, b] ->
        "#{year} is leap year!!"

      _ ->
        false or nil
    end
  end
end
