defmodule LearnElixir.LearnControl do
  def run do

# Elixir Control Structures: if, unless, case, cond, and with

# --- if/unless ---
IO.puts("=== if/unless ===")

# Example 1: Using `if` to check a condition
if String.valid?("Hello") do
  IO.puts("Valid string!")
else
  IO.puts("Invalid string.")
end
# Output: Valid string!

# Example 2: Using `if` to check truthy values
if "some string" do
  IO.puts("Truthy")
else
  IO.puts("Falsey")
end
# Output: Truthy

# Example 3: Using `unless` to check for the negative condition
unless is_integer("hello") do
  IO.puts("Not an Integer")
else
  IO.puts("It's an Integer")
end
# Output: Not an Integer

# --- case ---
IO.puts("\n=== case ===")

# Example 1: Using case for pattern matching with tuples
case {:ok, "Hello World"} do
  {:ok, result} -> IO.puts("Result: #{result}")
  {:error} -> IO.puts("Uh oh!")
  _ -> IO.puts("Catch all")
end
# Output: Result: Hello World

# Example 2: Using case for pattern matching with guards
case {1, 2, 3} do
  {1, x, 3} when x > 0 -> IO.puts("Will match")
  _ -> IO.puts("Won't match")
end
# Output: Will match

# Example 3: Using case with the pin operator to match an existing variable
pie = "apple pie"
case "apple pie" do
  ^pie -> IO.puts("It matches the pinned variable!")
  _ -> IO.puts("It's something else.")
end
# Output: It matches the pinned variable!

# --- cond ---
IO.puts("\n=== cond ===")

# Example 1: Using cond for condition-based matching (similar to if-else if)
cond do
  2 + 2 == 5 -> IO.puts("This will not be true")
  2 * 2 == 3 -> IO.puts("Nor this")
  1 + 1 == 2 -> IO.puts("But this will")
end
# Output: But this will

# Example 2: Using cond with a default "catch-all"
cond do
  7 + 1 == 0 -> IO.puts("Incorrect")
  true -> IO.puts("Catch all")
end
# Output: Catch all

# --- with ---
IO.puts("\n=== with ===")

# Example 1: Using with for pattern matching in multiple statements
user = %{first: "Sean", last: "Callan"}
with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last) do
  IO.puts("Full Name: #{last}, #{first}")
end
# Output: Full Name: Callan, Sean

# Example 2: Using with with an else clause for handling errors
user = %{first: "doomspork"}
with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last) do
  IO.puts("Full Name: #{last}, #{first}")
else
  :error -> IO.puts("User data not found.")
  _ -> IO.puts("Some other error.")
end
# Output: User data not found.

  end

end
