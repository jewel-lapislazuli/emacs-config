; ruby-blockの設定
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

; ruby-electricの設定
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
