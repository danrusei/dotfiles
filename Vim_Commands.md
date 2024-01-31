# Usual VIM Commands & my defined bindings

## Movements

* **h, j, k, l** - normal moves
* **w, b** - next / previous world
* **'[[', ']]'** - next / previous function
* **%** - move to matching brace, brackets
* **gg, G** - move to first / last line number
* **nG, ngg or :n** - move to line number n
* **CTRL-D, CTRL-U** - scroll down / up screen
* **H, L** - beginning / end of the line - MAPPING

## Edits
* **i, a** - Insert text before / after cursor
* **I, A** - Insert text at beginning / end of line
* **o, O** - Open new line for text below / above cursor
* **yy, 5yy** - Copy current line / next five lines
  * y$: Copy everything from the cursor to the end of the line
  * y^: Copy everything from the start of the line to the cursor 
* :large_blue_diamond: In Visual Mode
  * **y** - Copy the selected lines
  * **d** - Cut the selected lines
  * **p** - Paste after the cursor
  * **P** - Paste before the cursor
* **c{motion}, cw, cc, 2cw, cG, caw** - Begin change / change to next word / line (stay in insert mode) / change to next two words / change to end of file / change word (when in middle)
* **d{motion}, dw, dd, dfS, dL, dG** - Cut to next word / line / up to S / to end file.
  * **10dd** - Cut 10 lines
  * **D** - Cut everything from where your cursor is to the end of the line
* **u,  CTRL-R** - undo last change, Redo changes which were undone
* **d/c{motion}i or a , like ca)** - i acts inside object; a acts around, change a () block
* **cif** - change in a function
* :red_circle: **10gcc, gc, gcap** - comment out a line (takes a count), to comment out the target of a motion/visual mode (for example, gcap to comment out a paragraph -- COMMENTARY.VIM
* **:%s/foo/bar/g** - Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.
* **:s/foo/bar/g** - Find each occurrence of 'foo' (in the current line only), and replace it with 'bar'.
* **:%s/foo/bar/gc** - Change each 'foo' to 'bar', but ask for confirmation first.

## :large_blue_circle: VIM for VsCode Bindings
* **Space v** - splits certically
* **Space s** - splits horizontally
* Move Arouns the Panes
   * **Space h** - move to Left Pane
   * **Space l** - move to Right Pane
   * **Space k** - move to Above Pane
   * **Space j** - move to Below Pane
* **Space w** - write / save changes
* **Space q** - quits without saving
* **Space x** - Like ":wq", but write only when changes have been made.
* **[ d** - Marker Previous
* **] d** - Marker Next
* **Space f** - Quick open a file
* **Space p** - Format document
* **g h** - Show Definition Preview Hover
* **g d** - Go To Definition
* **g p d** - Peek Definition
* **g i** - Go To Implementation
* **g p i** - Peek Implementation
* **g t** - Go To Type Definition
* **g p t** - Peek Type Definition
* **g r** - Reference Search
* :large_blue_diamond: In VIM Visual Mode:
   * **<** - Outdent Lines
   * **>** - Indent Lines
   * **J** - move selected lines Down
   * **K** - move selected lines Up
   * **Space c** - comment selected lines  

## :red_circle: VIM for Linux Bindings
* **jk** - exit Insert to Normal - MAPPING
* **Tab Tab** - switch between Windows easily - MAPPING
* **Tabs**
    * **nnn gt** Next Tab or nth Tab
    * **gT** Prev Tab
* **Space w** - Quick save - MAPPING
* **Space q** - Quick exit - MAPPING
* **CTRL-P** - search Files - MAPPING
    * **CTRL-V** - open the file in a vertical split
    * **CTRL-X** - open the file in a horizontal split 
    * **CTRL-T** - open the file in a new tab
* **Space ;** - search Buffers - MAPPING
* **:bnext, :bprev, :bdelete** - Next / previous / delete buffer
* **Space nt** - NERDTreeToggle - MAPPING
* **Space nf** - NERDTreeFind - MAPPING
    * **t** - Open the selected file in a new tab
    * **i** - Open the selected file in a horizontal split window
    * **s** - Open the selected file in a vertical split window
    * **I** - Toggle hidden files
    * **m** - Show the NERD Tree menu
    * **R** - Refresh the tree, useful if files change outside of Vim
* **:sp file, :vsp file** - Split current window horizontally or vertically
* **CTRL-z; fg** - go to shell and resume to vim

## :red_circle: Coc - mappings

* **[g, ]g** - to navigate diagnostics
* **gd, CTRL-O** coc-definition and back
* **gy** - coc-type-definition
* **gi** - coc-implementation
* **gr** - coc-references
* **K** - show_documentation
* **Space rn** - coc-rename, Symbol renaming !!!
* **Space f** - coc-format-selected, formatting selected code
* **Space a** - CocList diagnostics
* **Space o** - CocList outline
* **Space s** - CocList -I symbols

## Addendum
* :red_circle: - Linux VIM
* :large_blue_circle: - VsCode VIM
