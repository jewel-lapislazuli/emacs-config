; Caskの設定
(require 'cask "~/.cask/cask.el")
(cask-initialize)

; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

