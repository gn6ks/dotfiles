-- ================================================================================================
-- título: gn6ks dotfiles init.lua
-- autor: gn6ks
-- ================================================================================================

-- Configurar tecla líder como espacio
vim.g.mapleader = " "

-- Colores de Gruvbox (hexadecimal)
local gruvbox_colors = {
  bg0 = "#282828",       -- fondo principal
  bg1 = "#3c3836",       -- fondo alternativo
  bg2 = "#504945",       -- fondo para elementos flotantes
  fg0 = "#fbf1c7",       -- texto principal
  fg1 = "#ebdbb2",       -- texto alternativo
  red = "#cc241d",       -- rojo
  green = "#98971a",     -- verde
  yellow = "#d79921",    -- amarillo
  blue = "#458588",      -- azul
  purple = "#b16286",    -- morado
  aqua = "#689d6a",      -- verde agua
  orange = "#d65d0e",    -- naranja
  gray = "#928374",      -- gris
}

-- Aplica el tema Gruvbox a los grupos de sintaxis
local function apply_gruvbox()
  -- Transparencia
  vim.api.nvim_set_hl(0, "Normal", { fg = gruvbox_colors.fg0, bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

  -- Grupos de sintaxis básicos
  vim.api.nvim_set_hl(0, "Comment", { fg = gruvbox_colors.gray, italic = true })
  vim.api.nvim_set_hl(0, "String", { fg = gruvbox_colors.green })
  vim.api.nvim_set_hl(0, "Number", { fg = gruvbox_colors.orange })
  vim.api.nvim_set_hl(0, "Keyword", { fg = gruvbox_colors.red, bold = true })
  vim.api.nvim_set_hl(0, "Function", { fg = gruvbox_colors.blue })
  vim.api.nvim_set_hl(0, "Type", { fg = gruvbox_colors.yellow })
  vim.api.nvim_set_hl(0, "Identifier", { fg = gruvbox_colors.fg1 })
  vim.api.nvim_set_hl(0, "LineNr", { fg = gruvbox_colors.gray, bg = "none" })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = gruvbox_colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "Visual", { bg = gruvbox_colors.bg2 })
  vim.api.nvim_set_hl(0, "StatusLine", { fg = gruvbox_colors.fg0, bg = gruvbox_colors.bg2 })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = gruvbox_colors.gray, bg = "none" })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = gruvbox_colors.bg1 })
  vim.api.nvim_set_hl(0, "MatchParen", { bg = gruvbox_colors.bg2, fg = gruvbox_colors.orange })
  vim.api.nvim_set_hl(0, "Pmenu", { bg = gruvbox_colors.bg1, fg = gruvbox_colors.fg0 })
  vim.api.nvim_set_hl(0, "PmenuSel", { bg = gruvbox_colors.bg2, fg = gruvbox_colors.fg0 })

  -- Solución para la línea roja (cursor)
  vim.api.nvim_set_hl(0, "Cursor", { fg = gruvbox_colors.bg0, bg = gruvbox_colors.fg0 })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = gruvbox_colors.bg1 })
end

-- Aplicar el tema
apply_gruvbox()

-- Configuración básica
vim.opt.number = true                              -- Números de línea
vim.opt.relativenumber = true                      -- Números de línea relativos
vim.opt.cursorline = true                          -- Resaltar línea actual
vim.opt.wrap = false                               -- No envolver líneas
vim.opt.scrolloff = 10                             -- Mantener 10 líneas arriba/abajo del cursor
vim.opt.sidescrolloff = 8                          -- Mantener 8 columnas a izquierda/derecha del cursor
vim.opt.list = false                               -- Desactivar líneas grises de indentación
vim.opt.listchars = { tab = "  ", trail = " ", nbsp = " " }
vim.opt.colorcolumn = ""                           -- Desactivar línea roja de límite de ancho
vim.opt.signcolumn = "no"                          -- Desactivar columna de signos
vim.opt.numberwidth = 4                            -- Ancho estándar para la columna de números

-- Eliminar fondo gris en la columna de números y signos
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", fg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { fg = gruvbox_colors.gray, bg = "none" })

-- Asegurar que ColorColumn no tenga fondo
vim.cmd("highlight ColorColumn guibg=NONE ctermbg=NONE")

-- Sangrado
vim.opt.tabstop = 2                                -- Ancho de tabulación
vim.opt.shiftwidth = 2                             -- Ancho de sangrado
vim.opt.softtabstop = 2                            -- Ancho de tabulación suave
vim.opt.expandtab = true                           -- Usar espacios en lugar de tabs
vim.opt.smartindent = true                         -- Auto-sangrado inteligente
vim.opt.autoindent = true                          -- Copiar sangrado de la línea actual

-- Configuración de búsqueda
vim.opt.ignorecase = true                          -- Búsqueda insensible a mayúsculas
vim.opt.smartcase = true                           -- Sensible a mayúsculas si hay mayúsculas en la búsqueda
vim.opt.hlsearch = false                           -- No resaltar resultados de búsqueda
vim.opt.incsearch = true                           -- Mostrar coincidencias mientras se escribe

-- Configuración visual
vim.opt.termguicolors = true                       -- Habilitar colores de 24 bits
vim.opt.signcolumn = "yes"                         -- Mostrar siempre la columna de signos
vim.opt.colorcolumn = "100"                        -- Mostrar columna en el carácter 100
vim.opt.showmatch = true                           -- Resaltar paréntesis coincidentes
vim.opt.matchtime = 2                              -- Tiempo para mostrar paréntesis coincidente
vim.opt.cmdheight = 1                              -- Altura de la línea de comandos
vim.opt.completeopt = "menuone,noinsert,noselect"  -- Opciones de autocompletado
vim.opt.showmode = false                           -- No mostrar modo en la línea de comandos
vim.opt.pumheight = 10                             -- Altura del menú emergente
vim.opt.pumblend = 10                              -- Transparencia del menú emergente
vim.opt.winblend = 0                               -- Transparencia de ventanas flotantes
vim.opt.conceallevel = 0                           -- No ocultar markup
vim.opt.concealcursor = ""                         -- No ocultar markup en la línea del cursor
vim.opt.lazyredraw = true                          -- No redibujar durante macros
vim.opt.synmaxcol = 300                            -- Límite de resaltado de sintaxis

-- Función para mapear atajos de teclado
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Atajos de teclado
-- Recargar configuración
map("n", "<leader>r", ":luafile ~/.config/nvim/init.lua<CR>")  -- Recargar configuración de Neovim

-- Atajos para pestañas
map("n", "<leader>t", ":tabnew<CR>")               -- Crear nueva pestaña
map("n", "<leader>x", ":tabclose<CR>")             -- Cerrar pestaña actual
map("n", "<leader>pt", ":tabprevious<CR>")         -- Ir a la pestaña anterior
map("n", "<leader>nt", ":tabnext<CR>")             -- Ir a la pestaña siguiente

-- Atajos para dividir ventanas
map("n", "<leader>v", ":vsplit<CR>")               -- Dividir verticalmente
map("n", "<leader>s", ":split<CR>")                -- Dividir horizontalmente

-- Navegación entre ventanas
map("n", "<C-h>", "<C-w>h")                        -- Moverse a la ventana de la izquierda
map("n", "<C-l>", "<C-w>l")                        -- Moverse a la ventana de la derecha
map("n", "<C-j>", "<C-w>j")                        -- Moverse a la ventana de abajo
map("n", "<C-k>", "<C-w>k")                        -- Moverse a la ventana de arriba

-- Navegación entre buffers
map("n", "<Tab>", ":bnext<CR>")                    -- Ir al siguiente buffer
map("n", "<S-Tab>", ":bprevious<CR>")              -- Ir al buffer anterior
map("n", "<leader>d", ":bd!<CR>")                  -- Cerrar buffer actual

-- Ajustar tamaño de ventanas
map("n", "<C-Left>", ":vertical resize +3<CR>")    -- Aumentar ancho de ventana vertical
map("n", "<C-Right>", ":vertical resize -3<CR>")  -- Disminuir ancho de ventana vertical

-- Abrir explorador de archivos (netrw)
map("n", "<leader>e", ":25Lex<CR>")                -- Abrir netrw en vista de árbol (25% de ancho)

-- Salir del modo inserción fácilmente
map("i", "kj", "<Esc>")                            -- kj simula ESC
map("i", "jk", "<Esc>")                            -- jk simula ESC

-- Atajos en modo visual
map("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>")  -- Reemplazar todas las instancias de la palabra resaltada
map("v", "<C-s>", ":sort<CR>")                     -- Ordenar texto resaltado
map("v", "J", ":m '>+1<CR>gv=gv")                  -- Mover línea resaltada hacia abajo
map("v", "K", ":m '<-2<CR>gv=gv")                  -- Mover línea resaltada hacia arriba
