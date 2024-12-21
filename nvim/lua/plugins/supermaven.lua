return {
  "supermaven-inc/supermaven-nvim",
  event = "LspAttach",
  opts = {
    keymaps = {
      accept_suggestion = "<Tab>",
    },
    disable_keymaps = false,
    log_level = "warn",
    dsable_inline_completion = false,
  },
}
