# socks-copypath.nvim

A Neovim plugin for copying current file path.

## Installation

With [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "ohakutsu/socks-copypath.nvim",
  config = function()
    require('socks-copypath').setup()
  end
})
```

## Setup

First, you need to call `setup()` function.

```lua
require("ohakutsu/socks-copypath.nvim").setup()
```

### Configuration

Following are the default configuration.

```lua
{
  register = "+", -- Name of the register to set file path
}
```

## Usage

When you call the `setup()` function, the following commands are defined.

- `CopyPath`
  - Copy full path of current file
- `CopyRelativePath`
  - Copy relative path of current file

## License

[MIT License](/LICENSE)
