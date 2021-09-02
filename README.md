# nvim bug reproduction repo

This repo exists to demonstrate this issue: https://github.com/neovim/neovim/issues/15532 using neovim inside an arch linux container.

## reproduction steps

1. build and run the container with `./run.sh`
2. start nvim with `nvim -u minimal_init.lua test.py` (inside the container)
3. observe the issue doesn't occur on first load of nvim:
   1. insert the text `f = {"foo"}`, using `<c-s>}` and `<c-s>"` to create matching pairs
   2. leave insert mode and change the bracket spacing with `cs}{`
4. observe the issue on second load of nvim:
   1. repeat steps 3a and 3b
   2. the lsp error message should now be out of sync with text in the buffer
   
## video of issue

https://user-images.githubusercontent.com/23488939/131445436-90cccfd7-ba79-453e-9def-8a9b66eb445d.mp4
