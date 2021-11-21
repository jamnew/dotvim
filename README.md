# dotvim

## Deploy
git clone --recurse-submodules https://github.com/jamnew/dotvim.git .vim  
ln -s .vim/vimrc .vimrc

*Arch*  
I think nothing.

*Ubuntu*  

Install fonts-powerline

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
