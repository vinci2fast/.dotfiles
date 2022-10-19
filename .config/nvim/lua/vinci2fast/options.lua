local options = {
  guicursor = "",
  -- cursorline = true ,
  mouse = "a" ,
  number = true ,
  relativenumber = true ,
  tabstop = 2 ,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  hlsearch = false,
  incsearch = true,
  ignorecase = true,
  smartcase = true,
  smartindent = true,
  wrap = false,
  splitbelow = true,
  splitright = true,
  -- cc = "80",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
