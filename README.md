mdify
=====
`mdify` is a tool for previewing Markdown documents right in your browser, with a nice stylesheet.

![Screenshot of mdify](http://i.imgur.com/OiRr5.png)

Usage
-----
You can use it on your documents by running:

    mdify super_secret.md

It will automatically open a new browser window with the content rendered in there.

Installing
----
The installation requires Ruby 1.8.7 or greater.

    gem install mdify

Emacs
----
You can hook `mdify` to the `compile-command` in Emacs so it's run by pressing a
key.

First, bind the compile key to whatever you want to use:

    (global-set-key [f5] 'compile)

Then create a new hook for the Markdown mode:

    (add-hook 'markdown-mode-hook
      (lambda ()
        (set (make-local-variable 'compile-command) (concat "mdify " (buffer-name)))))

Now you can press F5 inside any Markdown document to automatically preview it in your browser.

If you are using RVM to manage your rubies then you will need to instruct Emacs to play nice with
it. To do this:

1. Download [rvm.el](https://github.com/senny/rvm.el) and save it in your Emacs load path.
2. Require it and set your Ruby version:

    (require 'rvm)
    (rvm-use-default)

3. You should now be able to use the hook mentioned above.

Stylesheet
----
The pretty styles are provided by Twitter's [Bootstrap](http://twitter.github.com/bootstrap/)
library. Right now there's no support for custom stylesheets but feel free to open an issue or
create a pull request if you want to add something else.

Farewell
----
This was written by [Federico](http://mheroin.com). Drop me a line on Twitter
([@febuiles](http://twitter.com/febuiles)) if you're using this.
