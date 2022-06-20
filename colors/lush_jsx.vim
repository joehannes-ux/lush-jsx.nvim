" reloading all lush_jsx highlights
lua << EOF
require("plenary.reload").reload_module("lush_jsx")
-- require("lush")(require('lush_jsx').setup())
EOF
