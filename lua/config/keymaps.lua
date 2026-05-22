local map = vim.keymap.set

-- Guardar y cerrar
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")

-- Navegación entre ventanas
map("n", "<leader>h", ":wincmd h<CR>")
map("n", "<leader>j", ":wincmd j<CR>")
map("n", "<leader>k", ":wincmd k<CR>")
map("n", "<leader>l", ":wincmd l<CR>")
map("n", "<leader>nt", ":NvimTreeToggle<CR>")

-- Telescope
map("n", "<leader>p", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")

-- Git (fugitive)
map("n", "<leader>gs", ":Git<CR>")
map("n", "<leader>ga", ":Gwrite<CR>")
map("n", "<leader>gc", ":Git commit<CR>")
map("n", "<leader>gp", ":Git push<CR>")
map("n", "<leader>gb", ":Git blame<CR>")
map("n", "<leader>gl", ":Git log<CR>")

-- Lazygit
map("n", "<leader>gg", ":LazyGit<CR>")
