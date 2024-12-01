defmodule LearnElixir.PatternMatching do
# Match Operator with Lists and Tuples.............
  # Match Operator Examples......................
    # Matching with Lists...................


  def run do

    list = [10, 20, 30]
    [head | tail] = list  # Matches the head and tail of the list
    IO.puts("Head: #{head}")  # Head of the list: 10
    IO.inspect(tail)  # Tail of the list: [20, 30]




    # Invalid matching example (uncomment to see the error)
    # [5 | _] = list

    # Matching with Tuples
    {:ok, status} = {:ok, "Success"}  # Matches the tuple
    IO.puts("Status: #{status}")  # Output: Success

    # Invalid matching example (uncomment to see the error)
    # {:error, msg} = {:ok, "Success"}



    # Pin Operator in Pattern Matching


    # Pin Operator Examples

    # Example 1: Pinning a variable
    x = 42
    ^x = 42  # Matches successfully since x is pinned to 42
    # Uncommenting below will raise a MatchError:
    # ^x = 99

    # Example 2: Pin Operator in Function Clauses
    pinned_value = "Hello"

    # Function to demonstrate pinning
    greet = fn
      (^pinned_value, name) -> "Hi #{name}"  # Uses pinned `pinned_value`
      (other_greeting, name) -> "#{other_greeting}, #{name}"  # Handles other greetings
    end

    # Testing the function
    IO.puts(greet.("Hello", "Alice"))  # Output: Hi Alice
    IO.puts(greet.("Good Morning", "Alice"))  # Output: Good Morning, Alice
  end
end
