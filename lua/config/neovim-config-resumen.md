# Neovim Config — Resumen v1.0

> Stack base instalada. Sin LSP por ahora — el siguiente paso cuando quieras
> meter más las manos en el desarrollo directo.

---

## Stack instalada

| Plugin | Qué hace |
|---|---|
| `lazy.nvim` | Plugin manager. Descarga, actualiza y carga todos los plugins. |
| `gruvbox.nvim` | Tema visual. Fondo café oscuro, contraste hard. |
| `lualine.nvim` | Barra de estado inferior. Muestra modo, archivo, posición del cursor. |
| `nvim-treesitter` | Syntax highlighting real. Entiende la estructura del código, no solo colorea palabras. |
| `nvim-tree.lua` | Árbol de archivos lateral. Reemplaza NERDTree. |
| `telescope.nvim` | Buscador fuzzy. Encuentra archivos y texto dentro de archivos. |
| `nvim-web-devicons` | Iconos de archivos. Dependencia de nvim-tree y lualine. |
| `plenary.nvim` | Utilidades Lua. Dependencia de telescope. |
| `gitsigns.nvim` | Indicadores visuales en el margen izquierdo. Muestra líneas agregadas, modificadas y eliminadas respecto al último commit. |
| `vim-fugitive` | Operaciones git completas desde Neovim. Status, add, commit, push, blame, log. |

---

## Keymaps

> `<leader>` = barra espaciadora

### Archivo

| Atajo | Acción |
|---|---|
| `Espacio + w` | Guardar archivo |
| `Espacio + q` | Cerrar ventana |
| `:q!` | Cerrar sin guardar (forzado) |

### Navegación entre ventanas (splits)

| Atajo | Acción |
|---|---|
| `Espacio + h` | Mover foco a ventana izquierda |
| `Espacio + j` | Mover foco a ventana abajo |
| `Espacio + k` | Mover foco a ventana arriba |
| `Espacio + l` | Mover foco a ventana derecha |

### Árbol de archivos (nvim-tree)

| Atajo | Acción |
|---|---|
| `Espacio + nt` | Abrir / cerrar el árbol |
| `a` (dentro del árbol) | Crear archivo o carpeta |
| `d` (dentro del árbol) | Eliminar |
| `r` (dentro del árbol) | Renombrar |
| `Enter` (dentro del árbol) | Abrir archivo |

### Telescope (buscador)

| Atajo | Acción |
|---|---|
| `Espacio + p` | Buscar archivos por nombre |
| `Espacio + fg` | Buscar texto dentro de archivos (requiere `ripgrep`) |
| `Espacio + fb` | Ver buffers abiertos |

### Git (fugitive)

| Atajo | Acción |
|---|---|
| `Espacio + gs` | Git status |
| `Espacio + ga` | Git add (archivo actual) |
| `Espacio + gc` | Git commit |
| `Espacio + gp` | Git push |
| `Espacio + gb` | Git blame |
| `Espacio + gl` | Git log |

---

## Comandos de Neovim esenciales

| Comando | Acción |
|---|---|
| `:Lazy` | Abrir panel de plugins |
| `U` (dentro de :Lazy) | Actualizar plugins |
| `q` (dentro de :Lazy) | Cerrar panel |
| `:TSUpdate` | Actualizar parsers de treesitter |

---

## Estructura de archivos

```
~/.config/nvim/
├── init.lua                    ← punto de entrada
└── lua/
    └── config/
        ├── options.lua         ← configuración general (números, tabs, mouse)
        ├── keymaps.lua         ← todos los atajos
        └── plugins.lua         ← lista de plugins con su configuración
```

---

## Próximos pasos (cuando quieras)

Fase 5 del roadmap: **LSP nativo** — autocompletado, ir a definición,
errores en tiempo real, sin depender de coc.nvim.

Requiere:
- `nvim-lspconfig` — configuración de servidores LSP
- `mason.nvim` — instalador de servidores LSP
- `nvim-cmp` — motor de autocompletado

---

*Config: `~/.config/nvim` | Versión Neovim: 0.11.6 | Plugin manager: lazy.nvim*
