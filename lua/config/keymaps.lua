local opts = {silent = true, noremap = true }
-- NORMAL MODE
-- window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)
-- J do not move cursor position
keymap.set("n", "J", "mzJ`z", opts)
-- center scrolling cursor position
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)
-- center search results navigation
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)
-- copy to system clipboard
keymap.set("n", "<leader>y", '"+y', opts)
keymap.set("n", "<leader>Y", '"+Y', opts)
-- paste from system clipboard
keymap.set("n", "<leader>p", '"+p', opts)
keymap.set("n", "<leader>P", '"+P', opts)
-- buffers navigations
keymap.set("n", "<S-h>", ":bprev<CR>", opts)
keymap.set("n", "<S-l>", ":bnext<CR>", opts)
-- increment and decrement
keymap.set("n", "+", "<C-a>", opts)
keymap.set("n", "-", "<C-x>", opts)
-- splitting
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)  -- vertical split
keymap.set("n", "<leader>sh", ":split<CR>", opts)   -- horizontal split
-- center cursor
keymap.set("n", "<S-z>", "zz")
-- insert line below/after
keymap.set("n", "<leader>o", "o<Esc>")
keymap.set("n", "<leader><S-o>", "O<Esc>")

-- VISUAL MODE
-- continual indenting
keymap.set("v", ">", ">gv", opts)
keymap.set("v", "<", "<gv", opts)
-- moving lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
-- copy to system clipboard (visual mode, opts)
keymap.set("v", "<leader>y", '"+y', opts)
-- paste from system clipboard (visual mode, opts)
keymap.set("v", "<leader>p", '"+p', opts)

