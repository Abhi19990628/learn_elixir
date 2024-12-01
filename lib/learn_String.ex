defmodule LearnElixir.LearnString do
  def run do
    # This module demonstrates the use of the pipe operator (`|>`) in Elixir
    defmodule PipeOperatorExamples do
      # ----------------------------------------------------------------
      # 1. Introduction to the Pipe Operator
      def introduction_example do
        "hello world"
        |> String.upcase() # Converts to uppercase
        |> String.reverse() # Reverses the string
      end

      # ----------------------------------------------------------------
      # 2. Why Use the Pipe Operator?
      def without_pipe do
        String.reverse(String.upcase("hello world"))
      end

      def with_pipe do
        "hello world"
        |> String.upcase()
        |> String.reverse()
      end

      # ----------------------------------------------------------------
      # 3. Working with Lists
      def list_pipeline_example(list) do
        list
        |> Enum.map(&(&1 * 2)) # Multiply each element by 2
        |> Enum.filter(&(&1 > 5)) # Filter elements greater than 5
        |> Enum.sort(:desc) # Sort the list in descending order
      end

      # ----------------------------------------------------------------
      # 4. Composing Functions
      def composed_example do
        12345
        |> Integer.to_string() # Convert integer to string
        |> String.graphemes() # Split into characters
        |> Enum.map(&String.to_integer/1) # Convert characters back to integers
      end

      # ----------------------------------------------------------------
      # 5. Using Anonymous Functions with Pipe
      def anonymous_function_example do
        10
        |> (&(&1 * 2)).() # Multiply by 2
        |> (&("Result is #{&1}")).() # Format as a string
      end

      # ----------------------------------------------------------------
      # 6. Complex Pipelines
      def word_analysis(sentence) do
        sentence
        |> String.downcase() # Convert to lowercase
        |> String.split(~r/\W+/) # Split into words
        |> Enum.filter(&(&1 != "")) # Remove empty strings
        |> Enum.map(&String.length/1) # Map words to their lengths
      end

      # ----------------------------------------------------------------
      # 7. Using Pipe with External Libraries
      def hash_pipeline_example(input) do
        input
        |> Base.encode16() # Encode the hash to a readable string
        |> String.downcase() # Convert to lowercase
      end
    end

    # ----------------------------------------------------------------

    # Test the module
    IO.puts("1. Pipe Operator Introduction Example: #{PipeOperatorExamples.introduction_example()}")

    IO.puts("2. Why Use Pipe Operator? Without Pipe: #{PipeOperatorExamples.without_pipe()}")
    IO.puts("   With Pipe: #{PipeOperatorExamples.with_pipe()}")

    IO.inspect(PipeOperatorExamples.list_pipeline_example([1, 2, 3, 4, 5]), label: "3. List Pipeline Example")

    IO.inspect(PipeOperatorExamples.composed_example(), label: "4. Composed Example")

    IO.puts("5. Anonymous Function Example: #{PipeOperatorExamples.anonymous_function_example()}")

    IO.inspect(
      PipeOperatorExamples.word_analysis("Hello, world! Elixir is awesome!"),
      label: "6. Word Analysis Example"
    )

    IO.puts("7. Hash Pipeline Example: #{PipeOperatorExamples.hash_pipeline_example("Elixir rocks!")}")
  end
end
