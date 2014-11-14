; C-c C-cがpython-modeのキーバインドと重複しているので対処
(add-hook 'python-mode-hook
          (lambda ()
            (define-key python-mode-map (kbd "C-c C-c") 'nil)
            ))
