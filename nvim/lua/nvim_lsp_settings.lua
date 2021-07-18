local lspconfig = require('lspconfig')
require('lspsaga').init_lsp_saga({
  use_saga_diagnostic_sign = false,
  error_sign = '⤫',
  warn_sign = '⚠',
  code_action_keys = {
    quit = '<esc>',
    exec = '<CR>',
  },
  rename_action_keys = {
    quit = '<esc>',
    exec = '<CR>',
  },
  finder_action_keys = {
    open = '<CR>',
    vsplit = '<C-v>',
    split = '<C-x>',
    quit = '<esc>',
    scroll_down = '<C-n>',
    scroll_up = '<C-p>',
  },
  code_action_icon = '💡',
})

local on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent=true }
  -- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<leader>pd', '<cmd>lua require"lspsaga.provider".preview_definition()<CR>', opts)
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gh', '<cmd>lua require("lspsaga.provider").lsp_finder()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua require("lspsaga.hover").render_hover_doc()<CR>', opts)
  buf_set_keymap('n', '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', opts)
  buf_set_keymap('n', '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', opts)
  buf_set_keymap('n', 'gS', '<cmd>lua require("lspsaga.signaturehelp").signature_help()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua require("lspsaga.rename").rename()<CR>', opts)
  buf_set_keymap('n', '<leader>e', '<cmd>lua require("lspsaga.diagnostic").show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[e', '<cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_prev()<CR>', opts)
  buf_set_keymap('n', ']e', '<cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_next()<CR>', opts)
end

local servers = {
  'jsonls',
  'rnix',
  'solargraph',
  'terraformls',
  'tsserver',
  'html',
  'dockerls',
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
      usePlaceholders = true,
    },
  })
end
