-- Keymaps
local keymap = vim.keymap.set

-- General
keymap('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
keymap('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
keymap('i', 'jk', '<ESC>', { desc = 'Escape with jk' })
keymap('t', 'jk', [[<C-\><C-n>]], { desc = 'Escape terminal mode' })

-- Window navigation
keymap('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
keymap('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
keymap('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })
keymap('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- Nvim-tree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true, desc = 'Toggle explorer' })

-- Buffer navigation (Tabs)
keymap('n', '<Tab>', ':bnext<CR>', { silent = true, desc = 'Next buffer' })
keymap('n', '<S-Tab>', ':bprevious<CR>', { silent = true, desc = 'Previous buffer' })
keymap('n', '<leader>x', ':bdelete<CR>', { silent = true, desc = 'Close buffer' })

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })

-- Run current file
keymap('n', '<leader>r', function()
  -- Try to save only if the buffer is modified and not read-only
  if vim.bo.modified and not vim.bo.readonly then
    vim.cmd("silent! w")
  end
  local ft = vim.bo.filetype
  local fname = vim.fn.expand("%")
  local fname_no_ext = vim.fn.expand("%:p:r")

  local cmd
  if ft == "python" then
    cmd = "python3 " .. vim.fn.shellescape(fname)
  elseif ft == "cpp" then
    cmd = "g++ " .. vim.fn.shellescape(fname) .. " -o " .. vim.fn.shellescape(fname_no_ext) .. " && " .. vim.fn.shellescape(fname_no_ext)
  elseif ft == "c" then
    cmd = "gcc " .. vim.fn.shellescape(fname) .. " -o " .. vim.fn.shellescape(fname_no_ext) .. " && " .. vim.fn.shellescape(fname_no_ext)
  elseif ft == "javascript" then
    cmd = "node " .. vim.fn.shellescape(fname)
  elseif ft == "sh" then
    cmd = "bash " .. vim.fn.shellescape(fname)
  end

  if cmd then
    vim.cmd("split | term " .. cmd)
  else
    vim.notify("No runner configured for " .. ft, vim.log.levels.WARN)
  end
end, { desc = 'Run current file' })
