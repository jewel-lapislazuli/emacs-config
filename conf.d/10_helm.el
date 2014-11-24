;; emacs-helmの設定
(require 'helm-config)
(require 'helm-ag)

; helm-mode呼び出しの設定
(global-set-key (kbd "C-c C-h") 'helm-mini)
(global-set-key (kbd "C-c C-c") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "M-g a") 'helm-ag)

; helmでコマンド補完をできるようにする
(helm-mode 1)

; helm中にCtrl-hを使えるようにする
(eval-after-load 'helm
  '(progn
     (define-key helm-map (kbd "C-h") 'delete-backward-char)
     (define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
     ))

; helmのファイルパス自動補完機能を無効にする
(custom-set-variables '(helm-ff-auto-update-initial-value nil))

; TABで補完できるようにする。
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

