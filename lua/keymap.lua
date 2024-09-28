-- Clear highlights on search when pressing <Esc> in normal mode
-- See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between windows
--
-- See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Use <F4> to toggle normal mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, desc = "Go to normal mode with <jk>" })

-- Use <F4> to open file tree
vim.keymap.set(
	"n",
	"<F4>",
	":NvimTreeRefresh<CR>:NvimTreeToggle<CR>",
	{ noremap = true, silent = true, desc = "Open file tree with <F4>" }
)

-- Use <F8> to make
vim.keymap.set("n", "<F8>", ":terminal make<CR>", { noremap = true, desc = "Call make" })

-- Move between tabs in bar
vim.keymap.set("n", "<A-,>", ":BufferPrevious<CR>", { noremap = true, silent = true, desc = "Go to previous tab" })
vim.keymap.set("n", "<A-.>", ":BufferNext<CR>", { noremap = true, silent = true, desc = "Go to next tab" })
