" reloading all lush_jsx highlights
lua << EOF
package.loaded["lush_jsx.base"] = nil
package.loaded["lush_jsx.plugins"] = nil
package.loaded["lush_jsx.languages"] = nil
package.loaded["lush_jsx"] = nil
-- package.loaded["lush_jsx.config"] = nil
-- package.loaded["lush_jsx.utils"] = nil
require("lush")(require('lush_jsx').setup())
EOF
