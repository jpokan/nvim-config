# Neovim configuration file

This setup is optimized and configured to work with web technologies: javascript, vue, tailwindcss and threejs

Using:

-   Windows 11
-   Windows terminal

Path to `init.vim` file: `~/AppData/Local/nvim/init.vim`

Path to vim-plug folder: `~/AppData/Local/nvim-data/`

Note!: Don't forget to install PlugVim, check their documentation for instructions on windows.

Note!: Don't forget to install the required formatter for styling and/or language servers for linting with `:Mason`.

In this case:
Language Servers

```
- volar
- tsserver
- tailwindcss
- vimls
- lua_ls
```

Formatters

```
- stylua
- prettier
```

Format on save is enabled by default.

Use `:Prettier` command to make the finishing touches of file formatting, like semicolons.

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
