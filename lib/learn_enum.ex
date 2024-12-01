defmodule LearnElixir.LearnEnum do
  def run do
    # Enum Functions in Elixir

# 1. `all?` — Checks if all elements satisfy a condition.
# The `all?` function returns `true` if all elements in the collection meet the given condition.
# If any element does not satisfy the condition, it returns `false`.

# Example 1: Check if all numbers in a list are greater than zero.
numbers = [1, 2, 3, 4, 5]
result = Enum.all?(numbers, fn x -> x > 0 end)
IO.inspect(result)

# Example 2: Check if all words in a list have more than 3 characters.
words = ["apple", "banana", "cherry"]
result = Enum.all?(words, fn word -> String.length(word) > 3 end)
IO.inspect(result)


# 2. `any?` — Checks if any element satisfies a condition.
# The `any?` function returns `true` if at least one element meets the condition,
# and `false` if none of them do.

# Example 1: Check if any number in the list is even.
numbers = [1, 3, 5, 7, 9]
result = Enum.any?(numbers, fn x -> rem(x, 2) == 0 end)
IO.inspect(result)

# Example 2: Check if any string contains the letter "a".
words = ["hello", "world", "apple"]
result = Enum.any?(words, fn word -> String.contains?(word, "a") end)
IO.inspect(result)


# 3. `each` — Iterates over each element and performs an action.
# The `each` function applies a given action (side effect) to each element in the collection.

# Example 1: Print each number in the list.
Enum.each([1, 2, 3, 4], fn x -> IO.puts(x) end)

# Example 2: Print a greeting for each name in the list.
names = ["Alice", "Bob", "Charlie"]
Enum.each(names, fn name -> IO.puts("Hello, #{name}!") end)


# 4. `map` — Transforms each element by applying a function.
# The `map` function transforms each element in the collection by applying the given function.

# Example 1: Square each number in the list.
numbers = [1, 2, 3, 4]
squares = Enum.map(numbers, fn x -> x * x end)
IO.inspect(squares)

# Example 2: Convert each string to uppercase.
words = ["hello", "world"]
uppercase_words = Enum.map(words, fn word -> String.upcase(word) end)
IO.inspect(uppercase_words)


# 5. `min` — Returns the smallest element in the enumerable.
# The `min` function returns the smallest element in the collection.

# Example 1: Find the smallest number in the list.
numbers = [5, 3, 7, 1]
min_value = Enum.min(numbers)
IO.inspect(min_value)

# Example 2: Find the alphabetically smallest string in the list.
words = ["apple", "banana", "cherry"]
smallest_word = Enum.min(words)
IO.inspect(smallest_word)


# 6. `max` — Returns the largest element in the enumerable.
# The `max` function returns the largest element in the collection.

# Example 1: Find the largest number in the list.
numbers = [5, 3, 7, 1]
max_value = Enum.max(numbers)
IO.inspect(max_value)

# Example 2: Find the alphabetically largest string in the list.
words = ["apple", "banana", "cherry"]
largest_word = Enum.max(words)
IO.inspect(largest_word)


# 7. `filter` — Filters elements based on a condition.
# The `filter` function returns a new list with only those elements that satisfy the given condition.

# Example 1: Keep only the even numbers from the list.
numbers = [1, 2, 3, 4, 5]
evens = Enum.filter(numbers, fn x -> rem(x, 2) == 0 end)
IO.inspect(evens)

# Example 2: Filter strings that contain the letter "e".
words = ["hello", "world", "apple"]
filtered_words = Enum.filter(words, fn word -> String.contains?(word, "e") end)
IO.inspect(filtered_words)


# 8. `reduce` — Reduces the enumerable to a single value.
# The `reduce` function applies a given function to each element, cumulatively, starting with a given accumulator value.

# Example 1: Sum the numbers in a list.
numbers = [1, 2, 3, 4]
sum = Enum.reduce(numbers, 0, fn x, acc -> acc + x end)
IO.inspect(sum)

# Example 2: Concatenate all strings in the list.
words = ["hello", "world", "elixir"]
concatenated = Enum.reduce(words, "", fn word, acc -> acc <> word end)
IO.inspect(concatenated)


# 9. `sort` — Sorts the elements in the enumerable.
# The `sort` function sorts the elements in the collection in ascending order.

# Example 1: Sort the list of numbers in ascending order.
numbers = [5, 2, 8, 1]
sorted_numbers = Enum.sort(numbers)
IO.inspect(sorted_numbers)

# Example 2: Sort strings in alphabetical order.
words = ["banana", "apple", "cherry"]
sorted_words = Enum.sort(words)
IO.inspect(sorted_words)


# 10. `uniq` — Removes duplicates from the enumerable.
# The `uniq` function removes all duplicate elements from the collection, leaving only unique values.

# Example 1: Remove duplicates from a list of numbers.
numbers = [1, 2, 2, 3, 4, 4]
unique_numbers = Enum.uniq(numbers)
IO.inspect(unique_numbers)

# Example 2: Remove duplicate words from a list.
words = ["apple", "banana", "apple", "cherry"]
unique_words = Enum.uniq(words)
IO.inspect(unique_words)

  end
end
