;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a link to Doom's Module Index where all
;;      of our modules are listed, including what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input
       ;;bidi
       ;;chinese
       ;;japanese
       ;;layout

       :completion
       ;;(company +childframe +tng)
       (corfu +dabbrev +icons +orderless)
       ;;helm
       ;;ido
       (ivy +childframe +fuzzy +icons)
       ;;vertico

       :ui
       deft
       doom
       doom-dashboard
       doom-quit
       ;;(emoji +unicode)
       hl-todo
       ;;hydra
       indent-guides
       (ligatures +extra)
       ;;minimap
       modeline
       nav-flash
       ;;neotree
       ophints
       (popup +defaults)
       tabs
       ;;treemacs
       unicode
       (vc-gutter +pretty)
       vi-tilde-fringe
       ;;window-select
       workspaces
       ;;zen

       :editor
       (evil +everywhere)
       ;;file-templates
       fold
       format
       ;;god
       ;;lispy
       ;;multiple-cursors
       ;;objed
       parinfer
       rotate-text
       ;;snippets
       word-wrap

       :emacs
       (dired +icons)
       electric
       (ibuffer +icons)
       (undo +tree)
       vc

       :term
       eshell
       ;;shell
       ;;term
       vterm

       :checkers
       (syntax +childframe)
       ;;spell
       ;;grammar

       :tools
       ;;ansible
       ;;biblio
       ;;collab
       debugger
       direnv
       (docker +lsp)
       editorconfig
       ;;ein
       ;;eval
       (lookup +dictionary +docsets)
       (lsp +eglot)
       (magit +forge)
       make
       ;;pass
       pdf
       ;;prodigy
       (terraform +lsp)
       ;;tmux
       tree-sitter
       upload

       :os
       (:if (featurep :system 'macos) macos)
       ;;tty

       :lang
       ;;agda
       ;;beancount
       (cc +lsp +tree-sitter)
       ;;clojure
       ;;common-lisp
       ;;coq
       ;;crystal
       ;;csharp
       data
       ;;dart
       ;;dhall
       ;;elixir
       ;;elm
       emacs-lisp
       ;;erlang
       ;;ess
       ;;factor
       ;;faust
       ;;fortran
       ;;fsharp
       ;;fstar
       ;;gdscript
       (go +lsp +tree-sitter)
       ;;(graphql +lsp)
       ;;haskell
       ;;hy
       ;;idris
       (json +lsp +tree-sitter)
       ;;java
       (javascript +lsp +tree-sitter)
       ;;julia
       (kotlin +lsp)
       ;;latex
       ;;lean
       ;;ledger
       ;;lua
       (markdown +grip)
       ;;nim
       ;;nix
       ;;ocaml
       (org +noter +pandoc +pomodoro +pretty)
       ;;php
       ;;plantuml
       ;;purescript
       (python +cython +lsp +poetry +tree-sitter)
       ;;qt
       ;;racket
       ;;raku
       (rest +jq)
       ;;rst
       ;;ruby
       (rust +lsp +tree-sitter)
       ;;scala
       (scheme +guile)
       (sh +lsp +tree-sitter)
       ;;sml
       ;;solidity
       ;;swift
       ;;terra
       ;;web
       (yaml +lsp +tree-sitter)
       ;;zig

       :email
       ;;(mu4e +org +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       calendar
       ;;emms
       ;;everywhere
       ;;irc
       ;;(rss +org)

       :config
       ;;literate
       (default +bindings +smartparens))
