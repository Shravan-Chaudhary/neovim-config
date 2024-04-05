
return {
 "nvim-lualine/lualine.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- Gruvbox color palette with slightly adjusted background for lualine
    local colors = {
      dark0 = "#282828",
      dark1 = "#3c3836",
      dark2 = "#504945",
      dark3 = "#665c54",
      dark4 = "#7c6f64",
      gray = "#928374",
      light0 = "#fdf4c1",
      light1 = "#ebdbb2",
      light2 = "#d5c4a1",
      light3 = "#bdae93",
      light4 = "#a89984",
      fg = "#d5c4a1",
      bg = "#282828",
      inactive_bg = "#32302f",
      red = "#fb4934",
      green = "#b8bb26",
      yellow = "#fabd2f",
      blue = "#83a598",
      purple = "#d3869b",
      aqua = "#8ec07c",
      orange = "#fe8019",
      -- Adjusted lualine background color for better contrast
      lualine_bg = "#32302f", -- Slightly lighter than the inactive_bg for better contrast
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.lualine_bg, gui = "bold" },
        b = { bg = colors.lualine_bg, fg = colors.fg },
        c = { bg = colors.lualine_bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.green, fg = colors.lualine_bg, gui = "bold" },
        b = { bg = colors.lualine_bg, fg = colors.fg },
        c = { bg = colors.lualine_bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.purple, fg = colors.lualine_bg, gui = "bold" },
        b = { bg = colors.lualine_bg, fg = colors.fg },
        c = { bg = colors.lualine_bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.lualine_bg, gui = "bold" },
        b = { bg = colors.lualine_bg, fg = colors.fg },
        c = { bg = colors.lualine_bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.red, fg = colors.lualine_bg, gui = "bold" },
        b = { bg = colors.lualine_bg, fg = colors.fg },
        c = { bg = colors.lualine_bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = colors.gray, gui = "bold" },
        b = { bg = colors.inactive_bg, fg = colors.gray },
        c = { bg = colors.inactive_bg, fg = colors.gray },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = colors.orange },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
 end,
}
