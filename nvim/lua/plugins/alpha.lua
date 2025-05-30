return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.startify")

        -- Banner
        local banner = {
            [[				                                                                       ]],
            [[				                                                                     ]],
            [[				       ████ ██████           █████      ██                     ]],
            [[				      ███████████             █████                             ]],
            [[				      █████████ ███████████████████ ███   ███████████   ]],
            [[				     █████████  ███    █████████████ █████ ██████████████   ]],
            [[				    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[				  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[				 ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[				                                                                       ]],
        }
        dashboard.section.header.val = banner

        -- Setup using the theme's options
        alpha.setup(dashboard.opts)
    end,
}


