# Potential Errors & Mistakes

- Calling a `table` value.
  - This tends to happen if you call a function on a table that is not a function.

Below is an example:

```lua
local part = Instance('Part', workspace) -- THIS! This causes your problem! You fix it like this:
local part = Instance.new('Part', workspace) -- GOOD!
part.Anchored = true
part.CanCollide = false
part.Material = Enum.Material.Neon
part.Size = Vector3.one * 3
```

- More will be added!

---

*This page was written by [koneko](https://github.com/koneko) & [byteveil](https://github.com/byteveil)*
