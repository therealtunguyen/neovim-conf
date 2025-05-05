-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Disable the spacebar key's default behavior in Normal and Visual modes
local discipline = require("custom.discipline")
discipline.cowboy()
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- Escape from insert mode to normal mode
vim.keymap.set("i", "jk", "<Esc>", opts)

-- Increment and decrement numbers
vim.keymap.set("n", "+", "<C-a>", opts)
vim.keymap.set("n", "-", "<C-x>", opts)

-- Select all
vim.keymap.set("n", "<C-a>", "ggVG", opts)

-- Move lines up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Buffers
-- vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
-- vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts) -- close buffer
-- vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- Tabs
vim.keymap.set("n", "te", ":tabedit", opts) -- open new tab
vim.keymap.set("n", "<tab>", ":tabnext<Return>", opts)
vim.keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set("n", "<leader>wr", "<cmd>set wrap!<CR>", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Remove highlight search
vim.keymap.set("n", "<leader>nh", ":noh<CR>", opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Github Copilot keymaps
-- vim.keymap.set("i", "<C-Space>", 'copilot#Accept("")', {
-- 	expr = true,
-- 	replace_keycodes = false,
-- })
-- vim.g.copilot_no_tab_map = true

-- Gitsigns keymaps
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { noremap = true, silent = true })

-- Neotree keymaps
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")

-- Noice keymaps
vim.keymap.set("n", "<leader>nn", "<Cmd>NoiceDismiss<CR>")

-- Telescope keymaps for switching themes
vim.keymap.set("n", "[cl", "<Cmd>Telescope colorscheme<CR>", opts)

-- LuaSnip keymaps
-- Expand or jump in insert mode
-- vim.cmd([[
--     " Expand or jump in insert mode
--     imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
--
--     " Jump forward through tabstops in visual mode
--     smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
--
--     " Jump backward through snippet tabstops with Shift-Tab (for example)
--     imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
--     smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
-- ]])
--
-- -- Jump forward through tabstops in visual mode
-- vim.keymap.set("s", "<Tab>", "v:lua.require'luasnip'.jumpable(1) and '<Plug>luasnip-jump-next' or '<Tab>'", opts)
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>L",
-- 	'<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})<CR>'
-- )- Add any additional keymaps here
