local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

autocmd({"VimEnter"}, { pattern ="*", callback = open_nvim_tree })

