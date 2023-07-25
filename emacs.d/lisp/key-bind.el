;;; key binding
;; highlight
(global-set-key [f4] 'highlight-symbol-at-point)
(global-set-key [(control f4)] 'highlight-regexp)
(global-set-key [(shift f4)] 'unhighlight-regexp)

;; set goto-line shortcut
(global-set-key (kbd "M-g") 
		'goto-line)

;; start new line shortcut
;; this function will start newline in next line, 
;; C-j will start new line in pre line
;; M-j will start new line with comments in pre line
(global-set-key (kbd "C-<return>") 
		'(lambda ()
		   (interactive)
		   (move-end-of-line 1)
		   (newline-and-indent)))


(provide 'key-bind)
