-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- keymaps.lua
--
-- Comile C
vim.api.nvim_set_keymap("n", "<C-c>", [[:!gcc %<CR><CR>]], { noremap = true, silent = true })

-- Comile C++
vim.api.nvim_set_keymap("n", "<S-c>", [[:!g++ %<CR><CR>]], { noremap = true, silent = true })

-- git add
vim.api.nvim_set_keymap("n", "<leader>gg", [[:!git add %<CR><CR>]], { noremap = true, silent = true })
--git push
vim.api.nvim_set_keymap("n", "<leader>gp", [[:!git push -u origin]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gpp", [[:!git push -u origin]], { noremap = true, silent = true })
--git push but for set-upstream
vim.api.nvim_set_keymap(
  "n",
  "<leader>gpu",
  [[:!git push --set-upstream origin %<CR><CR>]],
  { noremap = true, silent = true }
)

-- open different terminal and run C
vim.api.nvim_set_keymap(
  "n",
  "<C-x>",
  [[:!kitty -e sh -c "./a.out; read -n 1 -s"<CR>]],
  { noremap = true, silent = true }
)
-- open different terminal and run C++
vim.api.nvim_set_keymap(
  "n",
  "<S-x>",
  [[:!kitty -e sh -c "./a.out; read -n 1 -s"<CR>]],
  { noremap = true, silent = true }
)

-- Compile LaTeX to PDF
vim.api.nvim_set_keymap("n", "<S-I>", [[:!pdflatex %<CR><CR>]], { noremap = true, silent = true })

-- Open PDF using MuPDF
vim.api.nvim_set_keymap("n", "<S-S>", [[:!mupdf %:r.pdf & disown <CR>]], { noremap = true, silent = true })
