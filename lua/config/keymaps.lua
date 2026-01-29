-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-----------------------------------------------------------
-- 🔑 Keymaps
-----------------------------------------------------------

--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", function()
  vim.diagnostic.setloclist({ open = false }) -- don't open and focus
  -- local window = vim.api.nvim_get_current_win()
  vim.cmd.lwindow() -- open+focus loclist if has entries, else close -- this is the magic toggle command
  -- vim.api.nvim_set_current_win(window) -- restore focus to window you were editing (delete this if you want to stay in loclist)
end, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Back to explorer --
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]review explorer [V]iew" })

-- [GIT] =========================================================================== --
vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR>", { desc = "[G]it [D]iff" })
-- vim.keymap.set('n', '<leader>gg', ':diffget ', { desc = '[G]it [G]et' })
vim.keymap.set("n", "<leader>G", ":Telescope git_status<CR>", { desc = "[G]it" })
vim.keymap.set("n", "<leader>gco", ":GitConflictChooseOurs<CR>", { desc = "[G]it [C]onflict choose [O]urs" })
vim.keymap.set("n", "<leader>gct", ":GitConflictChooseTheirs<CR>", { desc = "[G]it [C]onflict choose [T]heirs" })
vim.keymap.set("n", "<leader>gcb", ":GitConflictChooseBoth<CR>", { desc = "[G]it [C]onflict choose [B]oth" })
vim.keymap.set("n", "<leader>gcn", ":GitConflictNextConflict<CR>", { desc = "[G]it [C]onflict [N]ext" })
vim.keymap.set("n", "<leader>gcp", ":GitConflictPrevConflict<CR>", { desc = "[G]it [C]onflict [P]revious" })
vim.keymap.set("n", "<leader>gcl", ":GitConflictListQf<CR>", { desc = "[G]it [C]onflict [L]ist" })

-- Show type --
vim.keymap.set("n", "T", function()
  vim.lsp.buf.hover()
end, { desc = "[T]ype" })

-- Move selected lines to above or below --
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'")

-- Search and replace --
vim.keymap.set(
  "n",
  "<leader>sr",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "[S]earch [R]eplace Regex" }
)

-- Mini Surround --
-- vim.keymap.set('v', '<leader>sd', 'gsd', { desc = '[S]urrounding [D]elete <input>', remap = true })

-- Scroll Horinzontal --
vim.keymap.set("n", "<C-h>", "6b", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "6e", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bl", ":Debugprint qflist<CR>", { desc = "de[B]ug [L]ist" })
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without overwriting register" })

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set("n", "<A-w>", "<cmd>e #<CR>", { desc = "Go to last file", silent = true })

vim.keymap.set("x", "/", "<Esc>/\\%V", { desc = "Search in visual selection" })

-- nnoremap <leader>* :call ag#Ag('grep', '--literal ' . shellescape(expand("<cword>")))<CR>
-- vnoremap <leader>* :<C-u>call VisualStarSearchSet('/', 'raw')<CR>:call ag#Ag('grep', '--literal ' . shellescape(@/))<CR>

-- JS Doc --
vim.api.nvim_set_keymap("n", "<Leader>j", ":Neogen<CR>", { desc = "Generate [J]sDoc", noremap = true, silent = true })

-- Copilot --
-- Disable auto-suggestions
vim.g.copilot_enabled = false
-- Toggle Copilot on/off
vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>", { desc = "Enable Copilot", silent = true })
vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>", { desc = "Disable Copilot", silent = true })
-- vim.g.copilot_no_tab_map = true
-- vim.keymap.set('i', '<S-Tab>', ':copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })
vim.api.nvim_set_keymap(
  "n",
  "<Leader>gp",
  ":CopilotChatToggle<CR>",
  { desc = "[G]it Co[P]ilot Chat", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>gs",
  ":CopilotChatPrompts<CR>",
  { desc = "[G]it Copilot [S]uggest", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>gr",
  ":CopilotChatReset<CR>",
  { desc = "[G]it Copilot [R]eset", noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>gm",
  ":CopilotChatModels<CR>",
  { desc = "[G]it Copilot [M]odels", noremap = true, silent = true }
)
