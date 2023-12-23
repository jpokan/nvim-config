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

To use `glsl_analyzer`:

-   Download binary file from realeases e.g. `x86_64-windows.zip`
-   Extract to a folder and rename it to `glsl_analyzer/`
-   Copy the folder to where you want e.g. `C:\Users\Mada\glsl_analyzer\bin`
-   Add the bin/ folder path to your PATH environment variables
