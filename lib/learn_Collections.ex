defmodule LearnElixir.LearnCollections do
  def run do
    # Lists
# A list in Elixir is an ordered collection of elements. Lists can contain multiple types of values,
# including integers, strings, atoms, or even other lists.
# Properties:
# - Lists are implemented as linked lists in Elixir, meaning that accessing their length is a linear operation (O(n)).
# - Prepending (adding an element at the start) is faster than appending (adding an element at the end).

list = [3.14, :pie, "Apple"]
IO.inspect(list)  # Output: [3.14, :pie, "Apple"]

# Prepending (fast)
new_list = ["π" | list]
IO.inspect(new_list)  # Output: ["π", 3.14, :pie, "Apple"]

# Appending (slow)
list = list ++ ["Cherry"]
IO.inspect(list)  # Output: [3.14, :pie, "Apple", "Cherry"]

# List Concatenation
# You can join two lists using the ++/2 operator. This is useful when you want to combine lists.
list1 = [1, 2]
list2 = [3, 4, 1]
concatenated_list = list1 ++ list2
IO.inspect(concatenated_list)  # Output: [1, 2, 3, 4, 1]

# List Subtraction
# Elixir provides the --/2 operator for subtracting one list from another.
# This operation removes elements from the first list that are present in the second list.
list1 = ["foo", :bar, 42]
list2 = [42, "bar"]
result = list1 -- list2
IO.inspect(result)  # Output: ["foo", :bar]

# Head / Tail
# In Elixir, you can access the head (first element) and tail (the remaining elements) of a list
# using hd and tl functions or through pattern matching.
head = hd([3.14, :pie, "Apple"])
tail = tl([3.14, :pie, "Apple"])
IO.inspect(head)  # Output: 3.14
IO.inspect(tail)  # Output: [:pie, "Apple"]

# Using pattern matching
[head | tail] = [3.14, :pie, "Apple"]
IO.inspect(head)  # Output: 3.14
IO.inspect(tail)  # Output: [:pie, "Apple"]

# Tuples
# A tuple is similar to a list but is stored contiguously in memory.
# This allows fast access to elements but makes modifications expensive (since a new tuple must be created for updates).
tuple = {3.14, :pie, "Apple"}
IO.inspect(tuple)  # Output: {3.14, :pie, "Apple"}

# Example using tuples to return file read status
# Tuples are often used to return status information, such as when reading a file.
# {:ok, value} means success, and {:error, reason} indicates an error.

# Simulate the File.read results
IO.inspect({:ok, "file contents"})  # Output: {:ok, "file contents"}
IO.inspect({:error, :enoent})  # Output: {:error, :enoent}

# Keyword Lists
# A keyword list is a list of tuples, where each tuple's first element is an atom.
# Keyword lists are often used to pass options to functions.
# Properties:
# - Keys must be atoms.
# - Keys are ordered.
# - Keys can be repeated.

keyword_list = [foo: "bar", hello: "world"]
IO.inspect(keyword_list)  # Output: [foo: "bar", hello: "world"]

# Keys can be repeated in keyword lists
keyword_list = [foo: "bar", hello: "world", foo: "baz"]
IO.inspect(keyword_list)  # Output: [foo: "baz", hello: "world", foo: "baz"]

# Maps
# A map is an unordered collection of key-value pairs, where keys can be any type (not just atoms).
# Maps are the most flexible and commonly used collection in Elixir.
map = %{:foo => "bar", "hello" => :world}
IO.inspect(map[:foo])  # Output: "bar"
IO.inspect(map["hello"])  # Output: :world

key = "hello"
map = %{key => "world"}
IO.inspect(map["hello"])  # Output: "world"

# Map Updates:
# To update an existing map, you use the | operator (only works for keys that already exist),
# or you can use Map.put/3 for adding a new key.
map = %{foo: "bar", hello: "world"}

# Using the | operator to update an existing key
updated_map = %{map | foo: "baz"}
IO.inspect(updated_map[:foo])  # Output: "baz"

# Using Map.put to add a new key
new_map = Map.put(map, :new_key, "new_value")
IO.inspect(new_map[:new_key])  # Output: "new_value"

  end
end
