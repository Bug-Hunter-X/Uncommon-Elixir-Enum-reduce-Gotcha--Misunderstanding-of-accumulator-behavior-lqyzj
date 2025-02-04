# Uncommon Elixir Enum.reduce Gotcha: Misunderstanding of Accumulator Behavior

This example demonstrates a subtle issue that can arise when using `Enum.reduce` in Elixir, specifically when dealing with conditional logic within the reducer function.  While the code functions correctly, it is not the most idiomatic Elixir style, and might be less clear than using more efficient functional paradigms.  The issue lies in how the accumulator (`acc`) is handled within the `if` statement and how new Elixir developers might think about it.  The solution provides a more idiomatic way to write the code.

**The Bug:** The example uses an `if` statement to conditionally update the accumulator. While this works, it can be less efficient and clear than other approaches. For large lists, this implementation would be less efficient than using Enum.filter, for example. It would be less readable and maintainable than a more idiomatic approach.

**The Solution:** The solution shows a more concise and efficient method using `Enum.filter` and `Enum.sum`, taking advantage of Elixir's built-in functions to achieve the same result with greater readability and efficiency.