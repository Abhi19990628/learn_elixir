defmodule LearnElixir.LearnComprehensions do
  def run do
    # ----------------------------------------------------------------
    # 1. Introduction to Comparisons in Elixir
    # Comparisons are used to compare values.
    # Elixir supports standard comparison operators like `==`, `!=`, `>`, `<`, `>=`, and `<=`.
    # Additionally, Elixir has strict equality (`===`) and inequality (`!==`) operators.
    # ----------------------------------------------------------------

    a = 10
    b = 20
    IO.puts("a < b: #{a < b}")  # Output: true
    IO.puts("a == b: #{a == b}") # Output: false

    # ----------------------------------------------------------------
    # 2. Equality and Strict Equality
    # - `==` checks if two values are equal.
    # - `===` checks for both value and type equality.
    # ----------------------------------------------------------------

    IO.puts("10 == 10.0: #{10 == 10.0}")  # Output: true
    IO.puts("10 === 10.0: #{10 === 10.0}") # Output: false

    # ----------------------------------------------------------------
    # 3. Inequality and Strict Inequality
    # - `!=` checks if two values are not equal.
    # - `!==` checks for both value and type inequality.
    # ----------------------------------------------------------------

    IO.puts("10 != 20: #{10 != 20}")     # Output: true
    IO.puts("10 !== 10.0: #{10 !== 10.0}")  # Output: true

    # ----------------------------------------------------------------
    # 4. Greater Than and Less Than
    # Use `>` and `<` to compare two values numerically or lexicographically.
    # ----------------------------------------------------------------

    IO.puts("15 > 10: #{15 > 10}")      # Output: true
    IO.puts("\"cat\" < \"dog\": #{String.compare("cat", "dog") == :lt}") # Output: true

    # ----------------------------------------------------------------
    # 5. Greater Than or Equal, Less Than or Equal
    # Use `>=` and `<=` to compare values, allowing equality.
    # ----------------------------------------------------------------

    IO.puts("5 >= 5: #{5 >= 5}")       # Output: true
    IO.puts("3 <= 2: #{3 <= 2}")       # Output: false

    # ----------------------------------------------------------------
    # 6. Comparing Strings
    # Strings are compared lexicographically based on Unicode values.
    # ----------------------------------------------------------------

    IO.puts("\"apple\" < \"banana\": #{String.compare("apple", "banana") == :lt}")  # Output: true
    IO.puts("\"grape\" > \"apple\": #{String.compare("grape", "apple") == :gt}")   # Output: true

    # ----------------------------------------------------------------
    # 7. Comparing Lists
    # Lists are compared element by element.
    # ----------------------------------------------------------------

    IO.puts("[1, 2, 3] > [1, 2]: #{[1, 2, 3] > [1, 2]}")  # Output: true
    IO.puts("[1, 2, 3] < [1, 3]: #{[1, 2, 3] < [1, 3]}")  # Output: true

    # ----------------------------------------------------------------
    # 8. Comparing Tuples
    # Tuples are compared element by element, left to right.
    # ----------------------------------------------------------------

    IO.puts("{1, 2} > {1, 1}: #{ {1, 2} > {1, 1} }")     # Output: true
    IO.puts("{1, 2} < {1, 3}: #{ {1, 2} < {1, 3} }")     # Output: true

    # ----------------------------------------------------------------
    # 9. Comparing Maps
    # Maps cannot be directly compared using `>` or `<` but can be checked for equality.
    # ----------------------------------------------------------------

    map1 = %{a: 1, b: 2}
    map2 = %{b: 2, a: 1}
    IO.puts("map1 == map2: #{map1 == map2}") # Output: true

    # ----------------------------------------------------------------
    # 10. Boolean Comparisons
    # Boolean values can also be compared using `==`, `!=`, etc.
    # ----------------------------------------------------------------

    IO.puts("true > false: #{true > false}")  # Output: true
    IO.puts("false == false: #{false == false}") # Output: true

    # ----------------------------------------------------------------
    # 11. Mixed-Type Comparisons
    # Elixir has a defined order for mixed-type comparisons:
    # number < atom < reference < function < port < pid < tuple < map < list < bitstring
    # ----------------------------------------------------------------

    IO.puts("5 < :atom: #{5 < :atom}")        # Output: true
    IO.puts(":atom < [1, 2, 3]: #{:atom < [1, 2, 3]}") # Output: true

    # ----------------------------------------------------------------
    # 12. Practical Example with Comparisons
    # Combining comparisons with control flow (e.g., if-else statements).
    # ----------------------------------------------------------------

    score = 85
    grade =
      cond do
        score >= 90 -> "A"
        score >= 75 -> "B"
        true -> "C"
      end

    IO.puts("Your grade: #{grade}")  # Output: Your grade: B

    # ----------------------------------------------------------------
    # 13. Comparing Date and Time
    # Use the `Date`, `Time`, and `DateTime` modules to compare temporal data.
    # ----------------------------------------------------------------

    date1 = ~D[2024-11-28]
    date2 = ~D[2024-11-29]
    IO.puts("date1 < date2: #{date1 < date2}") # Output: true

    time1 = ~T[12:00:00]
    time2 = ~T[15:30:00]
    IO.puts("time1 < time2: #{time1 < time2}") # Output: true
  end
end
