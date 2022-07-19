require('nvim-tree').setup {
  disable_netrw       = false,
  hijack_netrw        = false,
  open_on_setup       = false,
  update_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  view = {
    relativenumber = true
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
