Holds my vim configuration, and allows synchonization across many servers.


Currently installed submodules:
* cpp highlighting
    ```sh
    $ git submodule add https://github.com/octol/vim-cpp-enhanced-highlight.git bundle/syntax/
    ```
* dracula colorscheme
    ```sh
    $ git -C bundle submodule add https://github.com/dracula/vim.git dracula-theme
    ```
* vim pro-session. Persists vim state across editor openings
    ```sh
    $ git -C bundle submodule add https://github.com/tpope/vim-obsession.git
    $ git -C bundle submodule add https://github.com/dhruvasagar/vim-prosession.git
    ```

