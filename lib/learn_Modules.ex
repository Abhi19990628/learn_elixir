defmodule LearnElixir.LearnModules do
  def run do
    # ----------------------------------------------------------------
    # 1. Introduction Example
    # Example of a basic module with a single function
    defmodule IntroductionExample do
      def greet do
        "Hello, welcome to Elixir modules!"
      end
    end

    # ----------------------------------------------------------------
    # 2. Defining Multiple Functions in a Module
    defmodule MultiFunctionExample do
      # Public function
      def add(a, b) do
        a + b
      end

      # Private function
      defp subtract(a, b) do
        a - b
      end

      # Public function using both public and private functions
      def add_and_subtract(a, b) do
        sum = add(a, b)
        difference = subtract(a, b)
        {sum, difference}
      end
    end

    # ----------------------------------------------------------------
    # 3. Using `alias`, `import`, and `require`
    defmodule UsingModulesExample do
      alias MultiFunctionExample, as: MF

      # Demonstrates using alias
      def alias_example do
        MF.add(3, 5)
      end

      # Demonstrates using import
      import MultiFunctionExample, only: [add: 2]

      def import_example do
        add(10, 15)
      end

      # Demonstrates using require
      def macro_example do
        require Integer
        Integer.is_even(4)
      end
    end

    # ----------------------------------------------------------------
    # 4. Nested Modules
    defmodule OuterModule do
      defmodule InnerModule do
        def greet do
          "Hello from InnerModule!"
        end
      end
    end

    # ----------------------------------------------------------------
    # 5. Structs in Modules
    defmodule StructExample do
      defstruct name: "Anonymous", age: 0

      def create_struct(name, age) do
        %StructExample{name: name, age: age}
      end

      def update_struct(struct, new_age) do
        %{struct | age: new_age}
      end
    end

    # ----------------------------------------------------------------
    # 6. Modules and Behaviours
    defmodule BehaviourExample do
      @callback greet(String.t()) :: String.t()

      defmodule Greeter do
        @behaviour BehaviourExample

        def greet(name) do
          "Hello, #{name}!"
        end
      end
    end

    # ----------------------------------------------------------------
    # Test the Examples

    IO.puts("1. Introduction Example: #{IntroductionExample.greet()}")

    result = MultiFunctionExample.add_and_subtract(10, 5)
    IO.inspect(result, label: "2. Multi-function Example")

    IO.puts("3. Using alias: #{UsingModulesExample.alias_example()}")
    IO.puts("   Using import: #{UsingModulesExample.import_example()}")
    IO.puts("   Using require and macro: #{UsingModulesExample.macro_example()}")

    IO.puts("4. Nested Module Example: #{OuterModule.InnerModule.greet()}")

    struct = StructExample.create_struct("Alice", 30)
    IO.inspect(struct, label: "5. Struct Example: Create")
    updated_struct = StructExample.update_struct(struct, 35)
    IO.inspect(updated_struct, label: "5. Struct Example: Update")

    greeter_result = BehaviourExample.Greeter.greet("Elixir Dev")
    IO.puts("6. Behaviour Example: #{greeter_result}")
  end
end
