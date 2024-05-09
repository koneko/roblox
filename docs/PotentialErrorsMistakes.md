# Potential Errors & Mistakes

- Calling a `table` value.
  - This can be avoided by either checking the `table` that you are accessing for the function or applying the function to a variable to use throughout the code.

Below is an example:

```lua
local instance = Instance.new
local part = instance('Part', workspace)
part.Anchored = true
part.CanCollide = false
part.Material = Enum.Material.Neon
part.Size = Vector3.one * 3
```

Using `Instance.new` all the time is up to you.

---

*This page previously referenced a [Developer Forum thread](https://devforum.roblox.com/t/attempt-to-call-a-table-value/542038)*

*This page was rewritten by [byteveil](https://github.com/byteveil)*
