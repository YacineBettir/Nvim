return{
  'nvim-tree/nvim-web-devicons',
  config=function()
    require("nvim-web-devicons").setup {
      override = {
        py = { icon = "", color = "#3572A5", cterm_color = "61", name = "Python" },
        lua = { icon = "", color = "#51a0cf", cterm_color = "74", name = "Lua" },
        js = { icon = "", color = "#f7df1e", cterm_color = "220", name = "JavaScript" },
        json = { icon = "", color = "#cbcb41", cterm_color = "185", name = "JSON" },
        html = { icon = "", color = "#de8c92", cterm_color = "204", name = "HTML" },
        css = { icon = "", color = "#61afef", cterm_color = "75", name = "CSS" },
        git = { icon = "", color = "#f34f29", cterm_color = "202", name = "Git" },
        md = { icon = "", color = "#519aba", cterm_color = "74", name = "Markdown" },
      },
      default = true,
    }
  end
}
