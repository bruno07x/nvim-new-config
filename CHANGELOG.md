# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Switched the default colorscheme to Tokyo Night Day and aligned its palette with the Windows Terminal "Tokyo Night Light" scheme.
- Added Prettierd formatter mappings for JSON, JSONC, JSON5, and JSON Lines files.

## [0.7.0] - 2026-08-17

### Added

- Added Codex integration with popup access through `<leader>cc` and `<Leader>gp`.

### Changed

- Migrated the AI coding assistant from GitHub Copilot to Codex.

### Removed

- Removed GitHub Copilot and Copilot Chat plugins.
- Removed the Copilot provider from Blink completion and obsolete Copilot keymaps.

## [0.6.0] - 2026-02-04

### Changed 

- Added plugins
    - Added plugin git blame.

### Fixed

- Fixed plugin
    - Fixed plugin jsDoc missing luasnip.

## [0.5.0] - 2026-02-01

### Changed 

- Changed plugins
    - Changed plugin auto completion blink-cmp to work with enter and S-tab.
    - Changed plugin Debugprint.

### Fixed

- Fixed configs
    - Fixed CopyRelativePath function to actually copy the path to clipboard.

## [0.4.0] - 2026-01-29

### Added

- Added plugins
    - added visual multi plugin.
    - added mini surround plugin.
- Added configs

## [0.3.0] - 2026-01-29

### Added

- Added plugins
    - added treesitter context plugin.
    - added blink-cmp plugin.
    - 
- Added configs
    - added operator "=" to use conform vim to format code.
    - added .editorconfig support.

## [0.2.0] - 2026-01-29

### Added

- Added plugins
    - Conform
    - Catppuccin
    - Copilot Chat
    - Copilot
    - Debugprint
    - git-conflict
    - js-doc
    - lualine
    - neo-tree
    - noice
    - rainbow-csv
    - snacks
    -vim-fugitive
- Added configs
    - autocmds
    - keymaps
    - options

## [0.1.0] - 2026-01-28

### Added

- Init Lazy vim.
