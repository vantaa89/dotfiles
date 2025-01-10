return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            clangd = {
                cmd = {
                    "clangd",
                    "--fallback-style=llvm",
                },
                on_attach = function(client, bufnr)
                    -- Buffer별 들여쓰기 설정
                    vim.bo[bufnr].tabstop = 4
                    vim.bo[bufnr].shiftwidth = 4
                    vim.bo[bufnr].expandtab = true
                end,
            },
        },
    },
}
