# Related setup

1. Starship config
- https://gist.github.com/drifterz13/988f6c8124d6f3eae09a24bd320d6883

2. Kitty terminal config
- https://github.com/drifterz13/kitty-conf


## Essentials commands

- **File and Directory Management:**
    
    - `%` → Create file
    - `d` → Create directory
    - `D` → Delete directory
- **File Navigation:**
    
    - `:Ex` → Open file explorer
    - `gg` → Go to top of the file
    - `G` → Go to bottom of the file
    - `$` → Go to the end of the line
    - `^` → Go to the beginning of the line
    - `%` -> Go to corresponding tag (eg. ),})
    - `]}` -> Go to corresponding curly brace
    - `a}` -> Go to next curly brace on visual mode
- **Editing and Formatting:**
    
    - `:so` → Source the file
    - `=` -> Indent the file
    - `visual mode + =` → Format Lua file
    - `u` → Undo
    - `d, d` in normal mode → Delete
    - `:%s/oldstring/newstring` → Replace string
    - `x` → Cut
    - `r` → Replace
    - `R` → Replace word
    - `q` + `any char` -> Record macro then using `@` + `any char` -> Play macro
    - `c` + `i` inner + `{, (, ", i` -> Change inner text/block object
    - `c` + `a` around + `{, (, ", i` -> Change around text/block object
    - `d` + `i` inner + `{, (, ", i` -> Delete inner text/block object
    - `d` + `a` around + `{, (, ", i` -> Delete around text/block object
- **Window Management:**
    
    - `<C-w (hjkl)>` → Jump to window
    - `<C-o>` → Jump back to previous location
- **Movement:**
    
    - `w` → Jump forward
    - `b` → Jump backward
- **Package Management:**
    
    - `:PackerSync` → Install packages

### **Kitty Terminal**

- **Tab and Window Management:**
    - `cmd + shift + ]` → Switch tab
    - `cmd + 1`, `cmd + 2` → Switch window
    - `cmd + r` -> Resize window
    - `cmd + w` -> Open new windonw
    - `cmd + t` -> Open new tab
    - `cmd + shift + d` -> Delete current tab/window

### **Nvim Terminal**
- **Tab and Window Management:**
    - `<leader>1`, `<leader>2` → Switch neotree tab
    - `:bd` -> Buffer delete
