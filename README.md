### My Neovim Configurations

If you'd like to use my Neovim configurations, follow the steps below:

---

#### 1. Install Neovim

Make sure you have Neovim installed on your machine. You can download the latest version from the [official Neovim website](https://neovim.io/) or install it using your system's package manager.

For example, on Fedora, use the following command:

```bash
sudo dnf install vim neovim
```

> **Note:** My configurations have only been tested on Neovim version `0.10.*`. Check your installed version with:  
> ```bash
> nvim --version
> ```

If you use another package manager, consult the Neovim documentation or adjust the command accordingly.

---

#### 2. Clone This Repository

Next, clone this repository into Neovim's configuration directory. On Linux-based systems, the directory is usually located at:  
`~/.config/nvim/`

Make sure the configuration folder is **empty** before cloning. Then run:

```bash
git clone https://github.com/GOLD3NMOON/my-neovim-configs.git ~/.config/nvim
```

---

#### 3. Project Structure

After cloning the repository, your file structure will look like this:

```
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── core
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── settings.lua
│   └── plugins
│       ├── editor
│       │   ├── auto-pairs.lua
│       │   ├── comments.lua
│       │   ├── indent-blankline.lua
│       │   └── nvim-treesitter.lua
│       ├── lsp
│       │   ├── mason.lua
│       │   ├── nvim-cmp.lua
│       │   └── trouble.lua
│       ├── tools
│       │   ├── cord.lua
│       │   ├── nvim-tree.lua
│       │   ├── plenary.lua
│       │   ├── telescope.lua
│       │   ├── toggleterm.lua
│       │   └── venv-selector.lua
│       └── ui
│           ├── lualine.lua
│           ├── noice.lua
│           └── themes.lua
└── README.md
```

---

### Considerations

1. **Simple Configuration:**  
   This project is minimalistic and focused on creating a functional code editor. I do not intend to add overly complex customizations or elaborate shortcuts. The goal is to open files and code efficiently and practically.

2. **Automated LSP:**  
   For LSP, linters, and formatters, I developed a simple script using `mason`, `lspconfig`, `null-ls`, `mason-lspconfig`, and `mason-null-ls`. It loads tools based on the buffer's file type. Although the code is simple and not very sophisticated, it works as intended.

3. **Personal Preferences:**  
   These configurations reflect my personal style (GOLD3NMOON). As such, some shortcuts and choices may seem confusing to others. Feel free to clone the repository and customize it as you see fit.

---

### Contact

If you need help or have suggestions, check out [my GitHub profile](https://github.com/GOLD3NMOON). I'm open to feedback! 😊

--- 
