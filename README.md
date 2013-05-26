elisp
=====

What is it?
-----------

It's my emacs configuration. Well, some of it.

How is it structured?
---------------------

 - The *vendor* dir is where libraries I use belong in their upstream versions. Most will be git submodules.
 - The *site* dir is where libraries I've written reside. There may not be any for a while
 - The *cust* dir is where my configurations go. Feel free to base yours on it or ignore it.

Fundamentals
------------

I treat emacs as a text editor. I rarely use other features of it and I don't anticipate reading my mail in it, IRCing from it or browsing the web in it. I have other tools for that. If you want that, jrockway has his elisp repository (which I couldn't get to grips with properly) on github and you should check that out.

Warning
-------

This is for personal use. I don't guarantee anything will be usable by other people, but I'll try to.

How do I use it?
----------------

If you understand the warning, you can do this:

    git submodule init
    git submodule update
    echo '(load "~/code/elisp/elisp.el")' > ~/.emacs

This assumes:
* You've checked out this repo as ~/code/elisp
* You're sat in that directory at the terminal

Do not merely symlink ~/.emacs to the elisp.el file. It won't work properly

How do I make it faster?
------------------------

You'll need an emacs open with a server running. You can m-x server-start inside an emacs session to do that. Then run 'make' in this directory.

You should grep the compilation buffer that opens for 'error' afterwards. I currently count three, two of which are test files and the other of which is magit-inotify, and I haven't installed inotify yet because my primary machine is a mac

What language modes do you include?
-----------------------------------

* Clojure (clojure-mode)
* Coffeescript (coffee-mode)
* CSS (css-mode)
* Haskell (haskell-mode)
* Javascript (js2-mode)
* LESS CSS (less-css-mode)
* Markdown (markdown-mode)
* Perl (cperl-mode)
* PHP (php-mode)
* Scala (scala-mode)
* SCSS (from Sass) (scss-mode)
* TT/Template Toolkit (tt-mode)
* YAML

What other modes do you include?
--------------------------------

* magit, for controlling a git repo
* web-mode, which is a poor way of doing code embedded in html. I use this for php and javascript sometimes. I have a view to replacing this with some mmm-mode magic in the future


And what miscellaneous libs?
----------------------------

* cl-lib, a dependency of magit on emacs23

What might be included in future?
---------------------------------

TODO.md contains a list of things I'm planning to add
