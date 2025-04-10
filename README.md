# Neovim configuration file

This setup is optimized and configured to work with web technologies: javascript, vue, tailwindcss and threejs

Using:

-   Windows 11
-   Windows terminal

Useful paths:

Path to `init.lua` file: `~/AppData/Local/nvim/init.lua`
Path to plugins folder: `~/AppData/Local/nvim-data/`

Using LazyVim for managing plugins instead of plugins

- Go to AppData folder `cd ~AppData/Local`
- You can `git clone https://github.com/jpokan/nvim-config.git`
- Change the folder name from nvim-config to nvim `mv ./nvim-config /nvim` (run terminal as administrator) or just rename normally

This setup requires a C compiler installed and added to the environment variables.

- Install MSYS2.
- If using MSYS2 UCRT64 terminal add `C:\msys64\ucrt64\bin` to PATH on environment variables.

Install formatter for styling and/or language servers for linting with `:Mason`.

Language Servers

```
- emmet_language_server
- lua_ls
- volar
- tailwindcss
- vimls
```

Formatters

```
- stylua
- prettierd
- shfmt
```

Format on save is enabled by default.

The following tools are required, install manually:

[`glsl_analyzer`, `ripgrep`]

`Mada` is the user folder

To install `glsl_analyzer`:

-   Download binary file from realeases e.g. `x86_64-windows.zip`
-   Extract to a folder and rename it to `glsl_analyzer/`
-   Copy the folder to where you want e.g. `C:\Users\Mada\glsl_analyzer\bin`
-   Add the installed folder PATH to environment variables

To install `ripgrep`:

-   Download binary file from realeases e.g. `ripgrep-14.0.3-i686-pc-windows-msvc.zip`
-   Extract to a folder and rename it to `ripgrep/`
-   Copy the folder to where you want e.g. `C:\Users\Mada\ripgrep`
-   Add the installed folder PATH to environment variables

