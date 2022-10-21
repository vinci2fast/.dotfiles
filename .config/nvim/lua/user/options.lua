local options = {
  guicursor = "",              -- change cursor to be a block 
  -- cursorline = true ,          -- add cursor line 
  mouse = "a" ,                -- enable mouse support 
  number = true ,              -- show row numbers 
  relativenumber = true ,      -- set relative row number based on position of cursor
  tabstop = 2 ,                -- number of columns a whitespace is worth when pressing tab
  softtabstop = 2,             -- number of whitespace when tab or backspace is pressed 
  shiftwidth = 2,              -- number of spaces used when autoindenting 
  expandtab = true,            -- use spaces to insert a tab 
  hlsearch = false,            -- disables highlighting of words when searching 
  incsearch = true,            -- enable searching based on what is typed so far 
  ignorecase = true,           -- ignore case when searching 
  smartcase = true,            -- ignore `ignorecase` when searching with case 
  smartindent = true,          -- do smart autoindenting when starting a new line
  autoindent = true,           -- copy indent from previous line
  wrap = false,                -- disables wrapping 
  splitbelow = true,           -- horizontal splitting always show below 
  splitright = true,           -- vertical splitting always show at right 
  cc = "80",                   -- set a color column at designated column
  termguicolors = true, 
  scrolloff = 8
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
