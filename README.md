# dotvim

## Keys

```
, pagedown -- next diff
, pageup -- next diff
, insert -- stage hunk
, del -- undo hunk

, g toggle gitgutter
, h toggle line highlights
, v preview hunk

F8 -- view tags
ctrl-w-w -- swap panes
enter -- jump to code for selected tag
p -- jump to code for selected tag but stay on tag pane

ctrl-n -- select first line, repeat on another line to linediff
ctrl-m -- linediff reset

F2 -- toggle line numbers
F3 -- toggle white space characters
F4 -- toggle grey cursor line and col
F5 -- toggle red 80 col red line

ctrl-k -- clear search highlight

@a -- apply php array macro
```

## Deploy

```
cd && git clone --recurse-submodules https://github.com/jamnew/dotvim.git .vim
ln -s .vim/vimrc .vimrc

sudo apt install fonts-powerline
sudo apt install automake pkg-config build-essential

git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure
make
sudo make install

curl -Ss https://raw.githubusercontent.com/vim-php/phpctags/gh-pages/install/phpctags.phar > phpctags
chmod +x phpctags
sudo mv phpctags /usr/local/bin/
```

*Putty*

> Download and install the DejaVu font in Windows.  
> Run PuTTY and create a new session with the following setting
>
> - Window-Appearance-Font = DejaVu Sans Mono for Powerline
> - Window-Appearance-Font Quality = ClearType
> - Window-Translation-Character Set = UTF-8
>
> Verify your linux locale LANG=en_US.UTF-8  (mine was out of the box)  
> Verify that your .vimrc has "set encoding=utf-8"  
> Verify your term session is capable of 256 colors (TERM=xterm-256color)

http://pdalinis.blogspot.com/2013/08/putty-powerline.html
