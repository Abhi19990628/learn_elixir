defmodule LearnElixir.LearnFunciton do
  # This module demonstrates various Elixir function concepts with detailed examples

  def run do
    # Define a submodule for function examples
    defmodule FunctionExamples do
      # ----------------------------------------------------------------
      # 1. Named Functions
      # A named function is defined inside a module.
      def add(a, b) do
        a + b
      end

      # ----------------------------------------------------------------
      # 2. Private Functions
      # Private functions are used for internal logic.
      defp greeting_phrase, do: "Hello, "

      def greet(name) do
        greeting_phrase() <> name
      end

      # ----------------------------------------------------------------
      # 3. Functions with Guards
      # Guards add conditions to function definitions.
      def hello(names) when is_list(names) do
        Enum.join(names, ", ") |> greet()
      end

      def hello(name) when is_binary(name), do: "Hello, " <> name

      # ----------------------------------------------------------------
      # 4. Functions with Pattern Matching
      # Pattern matching simplifies complex logic by handling specific cases.
      def length_of([]), do: 0
      def length_of([_ | tail]), do: 1 + length_of(tail)

      # ----------------------------------------------------------------
      # 5. Functions with Default Arguments
      # Default arguments provide fallback values when not supplied.
      def personalized_greet(name, lang \\ "en") do
        phrase(lang) <> name
      end

      defp phrase("en"), do: "Hello, "
      defp phrase("es"), do: "Hola, "
      defp phrase("fr"), do: "Bonjour, "

      # ----------------------------------------------------------------
      # 6. Anonymous Functions
      # Anonymous functions are defined using the `fn` keyword or shorthand syntax.
      def anonymous_function_example do
        sum = fn a, b -> a + b end
        sum.(2, 3) # Call the anonymous function
      end

      def anonymous_shorthand_example do
        sum = &(&1 + &2)
        sum.(4, 5) # Call the shorthand anonymous function
      end

      # ----------------------------------------------------------------
      # 7. Recursion
      # Recursion is a technique where a function calls itself.
      def factorial(0), do: 1
      def factorial(n) when n > 0, do: n * factorial(n - 1)

      # ----------------------------------------------------------------
      # 8. Higher-Order Functions
      # Higher-order functions take other functions as arguments or return them.
      def apply_function(func, a, b) do
        func.(a, b)
      end

      # ----------------------------------------------------------------
      # 9. Pipelines
      # The pipeline operator (`|>`) chains function calls.
      def pipeline_example(list) do
        list
        |> Enum.map(&(&1 * 2))
        |> Enum.filter(&(&1 > 5))
      end

      # ----------------------------------------------------------------
      # 10. Multi-Clause Functions
      # Multi-clause functions define different behaviors based on input.
      def classify_number(n) when n > 0, do: "Positive"
      def classify_number(n) when n < 0, do: "Negative"
      def classify_number(0), do: "Zero"
    end

    # ----------------------------------------------------------------
    # Test the FunctionExamples module
    IO.puts("Named Function Example: Add 2 + 3 = #{FunctionExamples.add(2, 3)}")

    IO.puts("Private Function Example: #{FunctionExamples.greet("Abhishek")}")

    IO.puts("Function with Guard (list): #{FunctionExamples.hello(["Alice", "Bob"])}")
    IO.puts("Function with Guard (string): #{FunctionExamples.hello("Abhishek")}")

    IO.puts("Pattern Matching Example: Length of [1, 2, 3] = #{FunctionExamples.length_of([1, 2, 3])}")

    IO.puts("Default Arguments Example (English): #{FunctionExamples.personalized_greet("Abhishek")}")
    IO.puts("Default Arguments Example (Spanish): #{FunctionExamples.personalized_greet("Abhishek", "es")}")

    IO.puts("Anonymous Function Example: Sum 2 + 3 = #{FunctionExamples.anonymous_function_example()}")
    IO.puts("Anonymous Shorthand Example: Sum 4 + 5 = #{FunctionExamples.anonymous_shorthand_example()}")

    IO.puts("Recursion Example: Factorial of 5 = #{FunctionExamples.factorial(5)}")

    add_fn = fn a, b -> a + b end
    IO.puts("Higher-Order Function Example: Apply Add Function (5 + 7) = #{FunctionExamples.apply_function(add_fn, 5, 7)}")

    IO.inspect(FunctionExamples.pipeline_example([1, 2, 3, 4]), label: "Pipeline Example (Double > 5)")

    IO.puts("Multi-Clause Function Example: Classify 10 = #{FunctionExamples.classify_number(10)}")
    IO.puts("Multi-Clause Function Example: Classify -5 = #{FunctionExamples.classify_number(-5)}")
    IO.puts("Multi-Clause Function Example: Classify 0 = #{FunctionExamples.classify_number(0)}")
  end
end
