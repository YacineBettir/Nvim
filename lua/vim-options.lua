vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.scrolloff=10
vim.cmd [[highlight Normal guibg=NONE ctermbg=NONE]]
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center cursor" })
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move left" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move down" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move up" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move right" })
vim.keymap.set('n','<leader>q',':q<CR>',{desc= 'quit current file'})
vim.opt.guicursor = "n-v-c:block,i-ci-ve:hor10,r-cr:hor10,o:hor10"
vim.opt.hlsearch=false
vim.opt.updatetime=50
vim.opt.colorcolumn='180'
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('n',"J","mzJ'z",{desc="move line to above"})
vim.keymap.set('n','<leader>y','\"+y')
vim.keymap.set('v','<leader>y','\"+y')
vim.keymap.set('n','<leader>Y','\"+Y')

