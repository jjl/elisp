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

If you understand the warning, you can append this line to your ~/.emacs:

    (load "~/code/elisp/elisp.el")

This assumes:
* You've checked out this repo as ~/code/elisp
* You have installed Cask: http://cask.github.io/

Do not merely symlink ~/.emacs to the elisp.el file. It won't work properly

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


What might be included in future?
---------------------------------

TODO.md contains a list of things I'm planning to add
