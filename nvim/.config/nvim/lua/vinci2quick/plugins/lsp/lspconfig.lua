local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript then
  return
end

local keymap = vim.keymap

-- enable keybinds for available lsp servers
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  --set keybinds
  keymap.set("n", "gf", ":Lspsaga lsp_finder<CR>", opts)
  keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
  keymap.set("n", "gd", ":Lspsaga peek_definition<CR>", opts)
  keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
  keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", opts)
  keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", opts)
  keymap.set("n", "<leader>d", ":Lspsaga show_line_diagnostics<CR>", opts)
  keymap.set("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>", opts)
  keymap.set("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", opts)
  keymap.set("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", opts)
  keymap.set("n", "K", ":Lspsaga hover_doc<CR>", opts)
  keymap.set("n", "<leader>o", ":LSoutlineToggle<CR>", opts)

  if client.name == "tsserver" then
    keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>")
  end
end


-- used to enable autocompletion
local capabilities = cmp_nvim_lsp.default_capabilities()

typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach
  }
})

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})
 
lspconfig["pyright"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["jsonls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["emmet_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["sumneko_lua"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      -- make the language server recognize "vim" global
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        -- make language server aware of runtime files
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})
