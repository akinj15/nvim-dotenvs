local opt = vim.opt -- for conciseness

-- line numbers 
opt.relativenumber = false
opt.number = true

-- tabs and identation

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true 

-- line wrapping

opt.wrap = false

-- search settings

opt.ignorecase = true
opt.smartcase = true 

-- cursor line 

opt.cursorline = true -- muito feio 

-- appearence 

opt.termguicolors = true 
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace 

opt.backspace = "indent,eol,start"

-- clipboard 
opt.clipboard:append("unnamedplus")

-- split windows 

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

