-- config de gn6ks
-- config minimalista de neovim (plugins de los cojones)

-- tema y transparencia
-- sin transparencia mejor
-- el tema default esta bien

-- configuracion basica
vim.opt.number = true                   -- numeros de linea
vim.opt.relativenumber = true           -- lo mismo pero relativo
vim.opt.cursorline = false               -- destacar linea
vim.opt.wrap = false                    -- no encojer lineas
vim.opt.scrolloff = 10                  -- 10 lineas alrededor del mouse
vim.opt.sidescrolloff = 8               -- 8 columnas tanto derecha como izq

-- Indentacion
vim.opt.tabstop = 2                     -- ancho del tab
vim.opt.shiftwidth = 2                  -- ancho indentado
vim.opt.softtabstop = 2                 -- Soft tab stop
vim.opt.expandtab = true                -- espacios en vez de tabs
vim.opt.smartindent = true              -- autoindentado inteligente on
vim.opt.autoindent = true               -- copiar indentado de la linea anterior (vscode)

-- configuracion de busqueda
vim.opt.ignorecase = true               -- nada
vim.opt.smartcase = true                -- mayus inteligente
vim.opt.hlsearch = false                -- highlight cosillas buscadas 
vim.opt.incsearch = true                -- lo que salga al tiempo que lo buscas
