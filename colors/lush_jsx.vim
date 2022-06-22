" reloading all lush_jsx highlights
lua require("plenary.reload").reload_module("lush_jsx")
lua require("lush")(require("lush_jsx").setup())

"{
"  plugins = {
"    -- "buftabline",
"    -- "coc",
"    "cmp", -- nvim-cmp
"    -- "fzf",
"    -- "gitgutter",
"    "gitsigns",
"    "lsp",
"    "lspsaga",
"    -- "nerdtree",
"    -- "netrw",
"    -- "nvimtree",
"    "neogit",
"    -- "signify",
"    -- "startify",
"    -- "syntastic",
"    "telescope",
"    "treesitter"
"  },
"  langs = {
"    -- "c",
"    -- "clojure",
"    -- "coffeescript",
"    -- "csharp",
"    "css",
"    -- "elixir",
"    -- "golang",
"    -- "haskell",
"    "html",
"    -- "java",
"    "js",
"    "json",
"    "jsx",
"    "lua",
"    "markdown",
"    -- "moonscript",
"    -- "objc",
"    -- "ocaml",
"    -- "purescript",
"    -- "python",
"    -- "ruby",
"    -- "rust",
"    -- "scala",
"    "typescript",
"    -- "viml",
"    -- "xml"
"  }
"}))
