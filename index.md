---
title: Language servers in Vim
author: Tavis Aitken
---
# Who am I?

------------------

## Tavis Aitken

![Tavisto](img/tavisto-headshot.jpeg)

::: incremental
- Coding for a while now, which is apparently 20 years now.
- Mohawk enthusiast
- Organizer of Denver DevOps meetup
- Organizer of DevOpsDays Rockies
- Principal SRE at Splunk
:::

## My progression of coding tools

::: incremental
- Started off using Borland C complier
- Used [NEDit](https://en.wikipedia.org/wiki/NEdit) in school and first few jobs
- The first real IDE was Zend Studio for PHP, including the switch to [Eclipse](https://en.wikipedia.org/wiki/Eclipse_\(software\))
- Read the book ["The Pragmatic Programmer"](https://pragprog.com/book/tpp20/the-pragmatic-programmer-20th-anniversary-edition), and took to heart the idea of using one tool really well.
- I decided Vim was my tool, and I needed to get really good at it.
- Put all my configs in source control
- Switched it up to NeoVim, which made me start my configs all over from scratch.
:::

# What is Vim?

------------------

## A simple, yet extremely powerful editor

VI variants have been around for a long time, and have been used by developers nearly as long as we have been writing code.

## A brief history

::: incremental
- ed by [Ken Thompson](https://en.wikipedia.org/wiki/Ed_\(text_editor\)) in 1973 for the original Bell Labs Unix, which is still part of the POSIX standard
- em by [George Coulouris](https://en.wikipedia.org/wiki/George_Coulouris_\(computer_scientist\)) Editor for mortals, because ed was hard to use.
- ex by [Bill Joy](https://en.wikipedia.org/wiki/Ex_\(text_editor\)) started from the code for em and in 1976 created an extended version of ed that got included in BSD
- vi by [Bill Joy](https://en.wikipedia.org/wiki/Vi) in 1976 renamed the project and made the visual mode of ed the main attraction
:::

## Time of the clones

Sometimes the originals just don't cut it, or aren't available for the platform you are using.

::: incremental
- Stevie by [Tim Thompson](https://en.wikipedia.org/wiki/Stevie_\(text_editor\)) was written for the Atari ST in 1987, and the code was posted as free software
- Elvis by [Steve Kirkendal](https://en.wikipedia.org/wiki/Elvis_\(text_editor\)) 1990, was the first to include color syntax highlighting
- Vim by [Bram Moolenaar](https://en.wikipedia.org/wiki/Vim_\(text_editor\)) in 1991 for the Amiga, based on `Stevie`
- NeoVim by [Justin M. Keyes](https://en.wikipedia.org/wiki/Vim_\(text_editor\)#Neovim) is a fork of `Vim` in 2014 that seeks to make it easier to maintain and separate the ui from the backend
:::

## Neat! I am going to use it! Wait, how do I quit?

::: incremental
- You don't, this is your life now better learn to use it
:::

# What is a language server?

------------------

## What is LSP?

  The Language Server protocol is used between a tool (the client) and a language smartness provider (the server) to integrate features like auto complete, go to definition, find all references and alike into the tool
- [Language Server Protocol specification](https://microsoft.github.io/language-server-protocol/specifications/specification-3-14)

## Who created it and why?

The LSP was created by Microsoft to define a common language for programming language analyzers to speak. Today, several companies have come together to support its growth, including Codenvy, Red Hat, and Sourcegraph, and the protocol is becoming supported by a rapidly growing list of editor and language communities

It is featured quite heavily in the VSCode editor to do all the auto completion as well as syntax checking.

## Wait, VSCode? I thought you were a terminal only type of operator!?

- VSCode Is one of the few editors that have come out I have considered switching to.

::: incremental

- Until I figured out how to get all this language server stuff working that is.

:::

## What other editors can use them?

Most modern editors have users that have embraced the idea and have made plugins that can utilize LSP backends.

- Vim / NeoVim
- Emacs
- VSCode
- JetBrains ( all the variants)
- Sublime
- Atom

## What languages are available?

Thus far the ones I have used are:

- python
- ruby
- go
- terraform
- puppet
- docker
- yaml
- json

A full list can be found at
[Langserver.org](https://langserver.org#implementations-server)

# So how do you set these up with Vim?

## There are two parts, the client and the servers

In order to utilize the LSP we first need a client that can understand what is needed and start a backened server and talk to it.

There are a few options for Vim, some only work with NeoVim due to the way the ability to run processes in an asynchronous way

- [vim-lsp](https://github.com/prabirshrestha/vim-lsp)
- [LanguageClient](https://github.com/autozimu/LanguageClient-neovim)
- [coc.nvim](https://github.com/neoclide/coc.nvim)

## So which one do you use?

My choice is coc.nvim.

## Pros:
- I found it to be the most complete and easiest to install and use.
- It has a snippit mode that is really nice and super fast
- The install of languange servers can be handled by the plugin
- It can keep all the servers it uses up to date on startup
- It's easy to customize to make it use a local complied LSP server if needed such as the terraform one

## Cons:

- It uses a lot of nodejs to do the installs and run language servers
- The initial setup can be confusing and a little tricky until you get all the requirements setup.
- I am still getting used to the key mappings coming from other plugins like utilisnip
- The nature of Async can sometimes lag behind what you can type


# Demo Time!

------------------

Lets hope I didn't break it trying to make the demo cooler.


# Resources

------------------

* [Where Vim Came From](https://twobithistory.org/2018/08/05/where-vim-came-from.html)
* [langserver.org](https://langserver.org)
* [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
* [NeoVim](https://github.com/neovim/)
* [tavisto/nvim-configs](https://github.com/tavisto/nvim-configs)
* [The Pragmatic Programmer](https://pragprog.com/book/tpp20/the-pragmatic-programmer-20th-anniversary-edition)
