;;; web-modeの設定
(require 'web-mode)

; web-modeを適用するファイルの設定
(setq auto-mode-alist (append (list
			       '("\\.phtml\\'" . web-mode)
			       '("\\.php\\'" . web-mode)
			       '("\\.jsp\\'" . web-mode)
			       '("\\.as[cp]x\\'" . web-mode)
			       '("\\.erb\\'" . web-mode)
			       '("\\.html\\'" . web-mode)
			       )
			      auto-mode-alist))

; インデントの設定
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-html-offset 2)
  (setq web-mode-css-offset 2)
  (setq web-mode-script-offset 4)
  (setq web-mode-php-offset 4)
  (setq web-mode-java-offset 4)
  (setq web-mode-asp-offset 2))
(add-hook 'web-mode-hook 'web-mode-hook)

;; 色の設定
; HTML
(set-face-attribute 'web-mode-html-tag-face nil :foreground "yellow")
(set-face-attribute 'web-mode-html-tag-bracket-face nil :foreground "white")
(set-face-attribute 'web-mode-html-attr-name-face nil :foreground "CadetBlue2")
