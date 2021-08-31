FROM archlinux:base-20210822.0.32033

# get packages
RUN ["/usr/bin/pacman", "-Syu", "--noconfirm"]
RUN ["/usr/bin/pacman", "-S", "--noconfirm", "neovim", "pyright", "git"]

# create a temp dir to work from
RUN ["mkdir", "/neovim-debug"]
WORKDIR /neovim-debug
ADD ./minimal_init.lua .
