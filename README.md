## My personal dotfiles
forked from jarolrod/vim-python-ide


Table of contents
=================
  * [Getting Started](#getting-started)
    * [Bash](#bash)
    * [Fish](#fish)
    * [DevIcons](#devicons-optional)
    * [Manual Install](#alternatively)
  * [Plugins](#plugins)
    * [Python](#python)
    * [Code + Project Navigation](#code-and-project-navigation)
    * [Snippets](#snippets)
    * [Extra](#extra)
  * [Key Bindings](#key-bindings)
    * [Python](#python)
    * [Switching Between Buffers](#switching-between-buffers)
    * [Toggle Relative Numbering](#toggle-relative-numbering)
    * [Comfortable Motion Scrolling](#comfortable-motion-scrolling)
    * [NerdTree Toggle](#nerdtree-toggle)
    * [Disable Arrow Keys](#disable-arrow-keys)
  
## Getting Started

A script shell will get a copy of the vimrc up and running on your local machine for testing purposes. The script will install the vimrc and compile the YouCompleteMe plugin:
### Bash 
```
Local user
sh -c "$(curl -fsSL https://raw.githubusercontent.com/fire3420/Dotfiles/master/setup.sh)"
```
### Fish
```
curl -fsSL https://raw.githubusercontent.com/fire3420/vim-python-ide/master/setup.sh | sh       
```
### YouCompleteMe
YouCompleteMe must be compiled for it to work. The install script handles the compiling, but if something goes wrong then do the following:

1. Make sure the following is included in your vimrc where all the vundle plugins are placed:
```
Plugin 'Valloric/YouCompleteMe'
```

#### MacOS
1. Assuming you already have MacVim installed, install Cmake through brew
```
brew install cmake
```
2. Navigate to YouCompleteMe bundle folder and run the compile script
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
3. Reference the [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) README.md for any other configuration

### Linux
Make sure you have Cmake and Python 3 Headers, they can be downloaded through your distributions package manager. Then run:
```
cd ~/.vim/bundle/YouCompleteMe
python3 ./install.py --clang-completer
```

### DevIcons (Optional)
This plugin is used to show file icons in NerdTree and requires additional steps to install:
* Must install a patched font that contains required glyphs: 
    * [Arch Linux](https://aur.archlinux.org/packages/nerd-fonts-complete/)
    * [Everyone Else](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts)
  * Set vim encoding to UTF-8
    ```
    set encoding=utf8
    ```
  * Set vim font to NerdFont
    ```
    set guifont=<FONT_NAME> <FONT_SIZE>
    ```
  * Add glyphs to Airline
    ```
    let g:airline_powerline_fonts = 1
* If you dont want this feature simply remove this plugin from your vimrc and execute :PluginUpdate in vim, for proper removal delete the devicons plugin folder

### Alternatively:
* Cherry pick the parts you like from my vimrc and add it to yours

## Plugins
* [PEP 8 Indentation](https://github.com/Vimjas/vim-python-pep8-indent) - Python Indentation
* [Jinja](https://github.com/lepture/vim-jinja) - Syntax and Indentation
* [Python Combined](https://github.com/mitsuhiko/vim-python-combined) - Extra handling


### Code and Project Navigation
* [NerdTree](https://github.com/scrooloose/nerdtree) - Project and File navigation
* [Tagbar](https://github.com/majutsushi/tagbar) - Class outline
* [CtrlSpace](https://github.com/vim-ctrlspace/vim-ctrlspace) - Bookmarks/Workspaces/Fuzzy Search/ File management
* [Ack](https://github.com/mileszs/ack.vim) - Search tool
* [Airline](https://github.com/vim-airline/vim-airline) - Tabline
* [Powerline](https://github.com/powerline/powerline) - Used for fonts
* [Fixed Task List](https://github.com/fisadev/FixedTaskList.vim) - Pending tasks
* [Comfortable Motion](https://github.com/yuttie/comfortable-motion.vim) - Physics based scrolling
* [Bookmarks](https://github.com/MattesGroeger/vim-bookmarks) - Bookmark code
* [Indent Guides](https://github.com/nathanaelkane/vim-indent-guides) - Visual repesentation of indents

### Snippets
* [Snippets](https://github.com/honza/vim-snippets) - Snippets
* [Snip-Mate](https://github.com/garbas/vim-snipmate) - Snippet Manager
* [NerdCommenter](https://github.com/scrooloose/nerdcommenter) - Easy code documentation
* [Utility Functions](https://github.com/tomtom/tlib_vim) - Add-on
* [Add-on](https://github.com/MarcWeber/vim-addon-mw-utils) - interpret file by function

### Extra 
* [Sparkup](https://github.com/rstacruz/sparkup) - Condensed HTML parser
* [Riv](https://github.com/Rykka/riv.vim) - Take notes in RST
* [Surround](https://github.com/tpope/vim-surround) - Add parentheses + etc. in pairs
* [Colorscheme](https://github.com/flazz/vim-colorschemes) - Change vim colorscheme
* [Rainbow-Parantheses](https://github.com/kien/rainbow_parentheses.vim) - Rianbow Parentheses
* [Vim-Wiki](https://github.com/vimwiki/vimwiki) - Personal Vim wiki
* [Vimagit](https://github.com/jreybert/vimagit) - Git operations from buffer
* [Dev Icons](https://github.com/ryanoasis/vim-devicons) - File icons in NerdTree
  * [DevIcons Installation](#devicons-optional)

## Key-Bindings
### Python 
```
let g:pymode_run_bind='<F5>'
<leader>b : set breakpoint
imap <F5> <Esc>:w<CR>:!clear;python %<CR>
close :pclose or <C-w>z (vim preview window)
```
### Youcompleteme
```
<leader>g : GoTO
<leader>G : GoToDefinition
<leader>T : GoToDeclaration
```
### Bookmark

| Action                                          | Shortcut    | Command                      |
|-------------------------------------------------|-------------|------------------------------|
| Add/remove bookmark at current line             | `mm`        | `:BookmarkToggle`            |
| Add/edit/remove annotation at current line      | `mi`        | `:BookmarkAnnotate <TEXT>`   |
| Jump to next bookmark in buffer                 | `mn`        | `:BookmarkNext`              |
| Jump to previous bookmark in buffer             | `mp`        | `:BookmarkPrev`              |
| Show all bookmarks (toggle)                     | `ma`        | `:BookmarkShowAll`           |
| Clear bookmarks in current buffer only          | `mc`        | `:BookmarkClear`             |
| Clear bookmarks in all buffers                  | `mx`        | `:BookmarkClearAll`          |
| Move up bookmark at current line                | `[count]mkk`| `:BookmarkMoveUp [<COUNT>]`  |
| Move down bookmark at current line              | `[count]mjj`| `:BookmarkMoveDown [<COUNT>]`|
| Move bookmark at current line to another line   | `[count]mg` | `:BookmarkMoveToLine <LINE>` |
| Save all bookmarks to a file                    |             | `:BookmarkSave <FILE_PATH>`  |
| Load bookmarks from a file                      |             | `:BookmarkLoad <FILE_PATH>`  |


### Switching Between Buffers
```
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>
```
### Toggle Relative Numbering
```
nnoremap <F4> :set relativenumber!<CR>
```
### NerdTree Toggle
* NerdTree wil automatically open when vim is launched in terminal without a file
```
nmap <localleader>t :NERDTreeToggle<CR>
```
Tmux Key bindings
-----------
So `~/.tmux.conf` overrides default key bindings for many action, to make them more reasonable, easy to recall and comforable to type.

Let's go through them. 

If you are an iTerm2 user, third column describes the keybinding of similar  "action" in iTerm2. It's possible to reuse very same keys you already get used to and tell iTerm2 to execute analogous tmux actions. See [iTerm2 and tmux integration](#iterm2-and-tmux-integration) section below.

<table>
    <tr>
        <td nowrap><b>tmux key</b></td>
        <td><b>Description</b></td>
        <td><b>iTerm2 key</b></td>
    </tr>
    <tr>
        <td nowrap><code>C-a</code></td>
        <td>Default prefix, used instead of "C-b". Same prefix is used in screen program, and it's easy to type. The only drawback of "C-a" is that underlying shell does not receive the keystroke to move to the beginning of the line.
        </td>
        <td>-</td>
    </tr>
    <tr>
        <td nowrap><code>&lt;prefix&gt; @</code></td>
        <td>Copy mode</td>
        <td>-</td>
    </tr>
    <tr>
        <td nowrap><code>&lt;prefix&gt; C-e</code></td>
        <td>Open ~/.tmux.conf file in your $EDITOR</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-q</code></td>
        <td>Reload tmux configuration from ~/.tmux.conf file</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; r</code></td>
        <td>Rename current window</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; R</code></td>
        <td>Rename current session</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; _</code></td>
        <td>Split new pane horizontally</td>
        <td>⌘⇧D</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; |</code></td>
        <td>Split new pane vertically</td>
        <td>⌘D</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-]</code></td>
        <td>Select next pane</td>
        <td></td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-[</code></td>
        <td>Select previous pane</td>
        <td></td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; ←</code></td>
        <td>Select pane on the left</td>
        <td>⌘⌥←</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; →</code></td>
        <td>Select pane on the right</td>
        <td>⌘⌥→</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; ↑</code></td>
        <td>Select pane on the top</td>
        <td>⌘⌥↑</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; ↓</code></td>
        <td>Select pane on the bottom</td>
        <td>⌘⌥↓</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-←</code></td>
        <td>Resize pane to the left</td>
        <td>^⌘←</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-→</code></td>
        <td>Resize pane to the right</td>
        <td>^⌘→</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-↑</code></td>
        <td>Resize pane to the top</td>
        <td>^⌘↑</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-↓</code></td>
        <td>Resize pane to the bottom</td>
        <td>^⌘↓</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; ]</code></td>
        <td>Move to next window</td>
        <td>⌘⇧]</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; [</code></td>
        <td>Move to previous window</td>
        <td>⌘⇧[</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; Tab</code></td>
        <td>Switch to most recently used window</td>
        <td>^Tab</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; L</code></td>
        <td>Link window from another session by entering target session and window reference</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; \</code></td>
        <td>Swap panes back and forth with 1st pane. When in main-horizontal or main-vertical layout, the main panel is always at index 1. This keybinding let you swap secondary pane with main one, and do the opposite.</td>
        <td>⌘\</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-o</code></td>
        <td>Swap current active pane with next one</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; +</code></td>
        <td>Toggle zoom for current pane</td>
        <td>⌘⇧Enter</td>
    </td>
    <tr>
        <td><code>&lt;prefix&gt; x</code></td>
        <td>Kill current pane</td>
        <td>⌘W</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; X</code></td>
        <td>Kill current window</td>
        <td>⌘⌥W</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-x</code></td>
        <td>Kill other windows but current one (with confirmation)</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; Q</code></td>
        <td>Kill current session (with confirmation)</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-u</code></td>
        <td>Merge current session with another. Essentially, this moves all windows from current session to another one</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; d</code></td>
        <td>Detach from session</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; D</code></td>
        <td>Detach other clients except current one from session</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-s</code></td>
        <td>Save tmux env (tmux resurrect)</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; C-r</code></td>
        <td>Load tmux env (tmux resurrect)</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; m</code></td>
        <td>Monitor current window for activity</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; M</code></td>
        <td>Monitor current window for silence by entering silence period</td>
        <td>-</td>
    </tr>
    <tr>
        <td><code>&lt;prefix&gt; F12</code></td>
        <td>Switch off all key binding and prefix hanling in current window. See "Nested sessions" paragraph for more info</td>
        <td>-</td>
    </tr>
</table>

## Tmux conf
* https://github.com/samoshkin/tmux-config/blob/master/readme.md

## Tmux plugins
* https://github.com/tmux-plugins/tmux-yank
* https://github.com/tmux-plugins/tmux-resurrect
* https://github.com/tmux-plugins/tmux-continuum
* https://github.com/tmux-plugins/tmux-sessionist
* https://github.com/tmux-plugins/tmux-logging

## Vim cheatsheet
* https://vim.rtorr.com/
