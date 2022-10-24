local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

local telescope_actions, actions = pcall(require, "telescope.actions")
if not telescope_actions then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    }
  }
})

telescope.load_extension("fzf")
