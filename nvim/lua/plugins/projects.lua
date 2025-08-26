return{
    {
    "ahmedkhalf/project.nvim",
    lazy = false,
    config = function()
      require("project_nvim").setup({
        -- Basic config options (customize as needed)
        detection_methods = { "pattern" },  -- Detect projects by patterns like .git
        pattern = { ".git", "Makefile", "package.json", "~/Documents/GitHub/*" },  -- Common project markers
      })
    end,
  },
}

