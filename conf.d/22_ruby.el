; Gemfileをruby-modeで編集する
(setq auto-mode-alist (append (list
                               '("Gemfile$" . ruby-mode)
                               )
                              auto-mode-alist))

; ruby-blockの設定
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

; ruby-endの設定
(require 'ruby-end)
(add-hook 'ruby-mode-hook
          '(lambda ()
             (abbrev-mode 1)
             (electric-pair-mode t)
             (electric-indent-mode t)
             (electric-layout-mode t)))
