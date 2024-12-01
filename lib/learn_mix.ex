defmodule LearnElixir.LearnMix do
  def run do
    # ----------------------------------------------------------------
    # 1. Introduction to Mix
    # Mix is a build tool in Elixir that provides tasks for:
    # - Creating, compiling, and testing Elixir projects.
    # - Managing dependencies.
    # - Running applications and generating documentation.

    # To check if Mix is available, run the following in your terminal:
    # $ mix --version

    # ----------------------------------------------------------------
    # 2. Creating a New Project with Mix
    # The `mix new` command generates a new Elixir project structure.

    # Example:
    # $ mix new hello_world
    # This creates a project with:
    # - A `lib` folder for source code.
    # - A `test` folder for tests.
    # - A `mix.exs` file for project configuration.

    # ----------------------------------------------------------------
    # 3. mix.exs File
    # The `mix.exs` file is the heart of an Elixir project.
    # It contains metadata, dependencies, and configuration for the project.

    # Example `mix.exs` content for a project:
    defmodule HelloWorld.MixProject do
      use Mix.Project

      def project do
        [
          app: :hello_world,
          version: "0.1.0",
          elixir: "~> 1.15",
          start_permanent: Mix.env() == :prod,
          deps: deps()
        ]
      end

      defp deps do
        [
          {:jason, "~> 1.4"} # Example dependency
        ]
      end
    end

    # ----------------------------------------------------------------
    # 4. Managing Dependencies with Mix
    # Dependencies are libraries that your project relies on.
    # They are defined in the `deps` function inside `mix.exs`.

    # Steps to add dependencies:
    # 1. Add the dependency to the `deps` function.
    # 2. Run `$ mix deps.get` to fetch the dependency.

    # Example:
    # {:jason, "~> 1.4"}  # Adds the Jason library for JSON handling

    # ----------------------------------------------------------------
    # 5. Compiling a Project
    # Compile your project using:
    # $ mix compile
    # This compiles all source files in the `lib` directory and generates a `_build` folder.

    # Example:
    # In `hello_world/lib/hello_world.ex`:
    defmodule HelloWorld do
      def greet do
        "Hello, Mix!"
      end
    end

    # Run the compiled function:
    # $ iex -S mix
    # > HelloWorld.greet()
    # "Hello, Mix!"

    # ----------------------------------------------------------------
    # 6. Running Tests
    # Mix includes built-in support for testing with ExUnit.
    # Tests are stored in the `test` directory.

    # To run all tests:
    # $ mix test

    # Example Test (`test/hello_world_test.exs`):
    defmodule HelloWorldTest do
      use ExUnit.Case

      test "greets the world" do
        assert HelloWorld.greet() == "Hello, Mix!"
      end
    end

    # ----------------------------------------------------------------
    # 7. Running Custom Mix Tasks
    # You can create custom Mix tasks for automating repetitive work.

    # Example Task:
    # Create a new file at `lib/mix/tasks/hello_task.ex`:
    defmodule Mix.Tasks.HelloTask do
      use Mix.Task

      @shortdoc "Prints a friendly greeting"
      def run(_) do
        IO.puts("Hello from a custom Mix task!")
      end
    end

    # Run the task:
    # $ mix hello_task
    # Output: Hello from a custom Mix task!

    # ----------------------------------------------------------------
    # 8. Generating Documentation
    # Mix can generate project documentation with the `mix docs` command.
    # For this, you need the `ex_doc` dependency.

    # Steps:
    # 1. Add `{:ex_doc, "~> 0.29"}` to `deps`.
    # 2. Run `$ mix deps.get`.
    # 3. Generate docs with `$ mix docs`.

    # The documentation will be available in the `doc` directory.

    # ----------------------------------------------------------------
    # 9. Using Mix Environments
    # Mix supports different environments (`:dev`, `:test`, and `:prod`).
    # You can run commands in a specific environment using `MIX_ENV`.

    # Example:
    # $ MIX_ENV=prod mix compile
    # Runs the compile task in the production environment.

    # ----------------------------------------------------------------
    # 10. Running Applications with Mix
    # Use `mix run` to execute Elixir scripts.

    # Example:
    # Create a script `script.exs`:
    # File content:
    IO.puts("Hello, Mix Run!")

    # Run the script:
    # $ mix run script.exs
    # Output: Hello, Mix Run!

    # ----------------------------------------------------------------
    # Practical Example Using Mix

    # Step 1: Create a new project:
    # $ mix new math_app

    # Step 2: Edit `math_app/lib/math_app.ex`:
    defmodule MathApp do
      def add(a, b), do: a + b
      def multiply(a, b), do: a * b
    end

    # Step 3: Add tests in `math_app/test/math_app_test.exs`:
    defmodule MathAppTest do
      use ExUnit.Case

      test "adds two numbers" do
        assert MathApp.add(2, 3) == 5
      end

      test "multiplies two numbers" do
        assert MathApp.multiply(4, 5) == 20
      end
    end

    # Step 4: Run tests:
    # $ mix test
    # Output: All tests pass.

    # ----------------------------------------------------------------
    # Summary
    # - Mix is essential for managing Elixir projects.
    # - It simplifies dependency management, testing, and compilation.
    # - With custom tasks, Mix can automate workflows efficiently.

    # ----------------------------------------------------------------
    # How to Practice
    # 1. Create a new Mix project.
    # 2. Add some dependencies and test them.
    # 3. Write tests and run them.
    # 4. Create a custom Mix task for your project.
  end
end
