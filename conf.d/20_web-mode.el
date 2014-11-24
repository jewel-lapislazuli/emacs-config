;;; web-modeの設定
(require 'web-mode)


; web-modeを適用するファイルの設定
(setq auto-mode-alist (append (list
                               '("\\.phtml$" . web-mode)
                               '("\\.php$" . web-mode)
                               '("\\.jsp$" . web-mode)
                               '("\\.as[cp]x$" . web-mode)
                               '("\\.erb$" . web-mode)
                               '("\\.html$" . web-mode)
                               )
                              auto-mode-alist))

; インデントの設定
(defun my-web-mode-indent-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 4)
  )
  
(add-hook 'web-mode-hook 'my-web-mode-indent-hook)

;; 色の設定
(custom-set-faces
  '(web-mode-html-tag-face ((t (:foreground "yellow"))))
  '(web-mode-html-tag-bracket-face ((t (:foreground "white"))))
  '(web-mode-html-attr-name-face ((t (:foreground "CadetBlue2"))))
  )

; C-c / で閉じタグを挿入
(define-key web-mode-map (kbd "C-c /") 'web-mode-element-close)

; C-c C-hのキーバインドがhelm-miniと重複しているので無効化
(define-key web-mode-map (kbd "C-c C-h") 'nil)

;; web-modeの動作設定
; Auto-pairingを有効にする
(setq web-mode-enable-auto-pairing t)
