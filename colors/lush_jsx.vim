" reloading all lush_jsx highlights
lua << EOF
package.loaded["lush_jsx"] = nil
package.loaded["lush_jsx.base"] = nil
package.loaded["lush_jsx.plugins"] = nil
package.loaded["lush_jsx.languages"] = nil
-- package.loaded["lush_jsx.config"] = nil
-- package.loaded["lush_jsx.utils"] = nil
local theme = require("lush_jsx")
local lush = require("lush")
local config = theme.setup({
  plugins = {
    "buftabline",
    -- "coc",
    "cmp", -- nvim-cmp
    -- "fzf",
    -- "gitgutter",
    "gitsigns",
    "lsp",
    "lspsaga",
    -- "nerdtree",
    -- "netrw",
    -- "nvimtree",
    "neogit",
    -- "signify",
    -- "startify",
    -- "syntastic",
    "telescope",
    "treesitter"
  },
  langs = {
    -- "c",
    "clojure",
    -- "coffeescript",
    -- "csharp",
    "css",
    -- "elixir",
    -- "golang",
    -- "haskell",
    "html",
    -- "java",
    "js",
    "json",
    "jsx",
    "lua",
    "markdown",
    -- "moonscript",
    -- "objc",
    -- "ocaml",
    -- "purescript",
    "python",
    -- "ruby",
    -- "rust",
    -- "scala",
    "typescript",
    "viml",
    "xml"
  }
})

lush(config)
EOF
