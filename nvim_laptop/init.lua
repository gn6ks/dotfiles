-- ================================================================================================
-- título: gn6ks dotfiles init.lua
-- autor: gn6ks
-- ================================================================================================
-- Configurar tecla líder como espacio
vim.g.mapleader = " "

-- Colores de Atom One Dark (hexadecimal)
local atom_one_dark_colors = {
  bg0 = "#282c34",       -- fondo principal
  bg1 = "#21252b",       -- fondo alternativo
  bg2 = "#3e4451",       -- fondo para elementos flotantes
  fg0 = "#abb2bf",       -- texto principal
  fg1 = "#959dcb",       -- texto alternativo (azul claro)
  red = "#e06c75",        -- rojo
  green = "#98c379",     -- verde
  yellow = "#e5c07b",    -- amarillo
  blue = "#61afef",      -- azul
  purple = "#c678dd",    -- morado
  aqua = "#56b6c2",      -- verde agua
  orange = "#d19a66",    -- naranja
  gray = "#5c6370",      -- gris
}

-- Aplica el tema Atom One Dark a los grupos de sintaxis
local function apply_atom_one_dark()
  vim.api.nvim_set_hl(0, "Normal", { fg = atom_one_dark_colors.fg0, bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
  vim.api.nvim_set_hl(0, "Comment", { fg = atom_one_dark_colors.gray, italic = true })
  vim.api.nvim_set_hl(0, "String", { fg = atom_one_dark_colors.green })
  vim.api.nvim_set_hl(0, "Number", { fg = atom_one_dark_colors.orange })
  vim.api.nvim_set_hl(0, "Keyword", { fg = atom_one_dark_colors.purple, bold = false })
  vim.api.nvim_set_hl(0, "Function", { fg = atom_one_dark_colors.blue })
  vim.api.nvim_set_hl(0, "Type", { fg = atom_one_dark_colors.yellow })
  vim.api.nvim_set_hl(0, "Identifier", { fg = atom_one_dark_colors.fg1 })
  vim.api.nvim_set_hl(0, "LineNr", { fg = atom_one_dark_colors.gray, bg = "none" })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = atom_one_dark_colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, "Visual", { bg = atom_one_dark_colors.bg2 })
  vim.api.nvim_set_hl(0, "StatusLine", { fg = atom_one_dark_colors.fg0, bg = atom_one_dark_colors.bg2 })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = atom_one_dark_colors.gray, bg = "none" })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = atom_one_dark_colors.bg1 })
  vim.api.nvim_set_hl(0, "MatchParen", { bg = atom_one_dark_colors.bg2, fg = atom_one_dark_colors.orange })
  vim.api.nvim_set_hl(0, "Pmenu", { bg = atom_one_dark_colors.bg1, fg = atom_one_dark_colors.fg0 })
  vim.api.nvim_set_hl(0, "PmenuSel", { bg = atom_one_dark_colors.bg2, fg = atom_one_dark_colors.fg0 })
  vim.api.nvim_set_hl(0, "Cursor", { fg = atom_one_dark_colors.bg0, bg = atom_one_dark_colors.fg0 })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = atom_one_dark_colors.bg1 })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", fg = "none" })
end

-- Aplicar el tema
apply_atom_one_dark()

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
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_deep_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Atajos de teclado
-- Recargar configuración
map("n", "<leader>r", ":luafile ~/.config/nvim/init.lua<CR>")  -- Recargar configuración de Neovim

-- Atajos para la gestión de archivos
map("n", "<leader>w", ":write<CR>")   -- Guardar archivo
map("n", "<leader>q", ":quit<CR>")    -- Salir de Neovim

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

