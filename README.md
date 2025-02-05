# 🚀 NeoVim Configuration

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A modern, lightweight, and feature-rich Neovim configuration that transforms your editing experience. Built with productivity and extensibility in mind, this configuration provides an IDE-like environment while maintaining Neovim's speed and efficiency.

![Neovim Screenshot](docs/screenshots/preview.png)

## ✨ Key Features

- 🎨 Modern and clean UI with carefully selected color schemes
- 🔍 Intelligent code completion and LSP integration
- ⚡ Lightning-fast fuzzy finding and file navigation
- 🌳 Built-in file explorer and git integration
- 🔌 Extensible plugin architecture
- ⌨️ Intuitive keybindings and commands

## 📋 Prerequisites

- Neovim >= 0.8.0
- Git
- A C compiler (for plugin compilation)
- [Optional] Nerd Font for icons
- [Optional] ripgrep for enhanced search

## 🚀 Installation

1. Backup your existing Neovim configuration:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone this repository:
```bash
git clone https://github.com/username/nvim-config.git ~/.config/nvim
```

3. Install plugins (they will be automatically installed on first launch):
```bash
nvim --headless "+Lazy sync" +qa
```

## 🎮 Usage

### Basic Keybindings

| Key         | Mode   | Action                        |
|------------|--------|-------------------------------|
| `<Space>`  | Normal | Leader key                    |
| `<Space>ff`| Normal | Find files                    |
| `<Space>fg`| Normal | Live grep                     |
| `<Space>e` | Normal | Toggle file explorer          |
| `gd`       | Normal | Go to definition              |
| `K`        | Normal | Show documentation            |

More keybindings can be found in [KEYBINDINGS.md](docs/KEYBINDINGS.md)

## ⚙️ Customization

This configuration is designed to be easily customizable. You can:

1. Modify plugin settings in `lua/plugins/`
2. Adjust keymaps in `lua/config/keymaps.lua`
3. Change color schemes in `lua/config/colorscheme.lua`
4. Add or remove plugins by editing `lua/plugins/init.lua`

## 👥 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📸 Screenshots

### Dashboard
![Dashboard](docs/screenshots/dashboard.png)

### Code Editing
![Code Editing](docs/screenshots/coding.png)

### File Explorer
![File Explorer](docs/screenshots/explorer.png)

