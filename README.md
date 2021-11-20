# dotvim

## Deploy
git clone --recurse-submodules https://github.com/jamnew/dotvim.git .vim  
ln -s .vim/vimrc .vimrc

*Arch*  
I think nothing.

*Ubuntu*  
sudo apt-get install fonts-powerline

*Putty*  
http://pdalinis.blogspot.com/2013/08/putty-powerline.html  

> PuTTY + powerline
> Powerline is a really nice looking command prompt and vim status bar.  When working on my linux machine, it was very easy to install following the instructions.
>
> Trying to get it to work in Windows and PuTTY, however, took a bit of sleuthing.  To add onto the complexity, the project has changed, and some of the information that is out there is outdated.
>
> So, here is what I did to make it work:
> Follow the installation instructions for powerline
> Download and install the DejaVu font in Windows.  Some of the other fonts in the site worked, and others didn't.  PuTTY seems to be picky on what fonts it will use, and the DejaVu font is a nice looking mono-spaced font, so it is a good starting point.
> (Re)run PuTTY and create a new session with the following settings
> Window-Appearance-Font = DejaVu Sans Mono for Powerline
> Window-Appearance-Font Quality = ClearType
> Window-Translation-Character Set = UTF-8
> Verify your linux locale LANG=en_US.UTF-8  (mine was out of the box)
> Verify that your .vimrc has "set encoding=utf-8"
> Verify your term session is capable of 256 colors (TERM=xterm-256color)
> And that's it!  I hope this helps.
