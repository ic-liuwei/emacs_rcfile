(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq inhibit-startup-screen t)
;; 关闭滚屏的提示音
(setq ring-bell-function 'ignore)

(add-to-list 'load-path "~/.emacs.d/lisp")
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(setq make-backup-files nil)

(add-to-list 'load-path "~/.emacs.d/lisp/emacs-neotree-dev")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme 'ascii)
(setq neo-smart-open t)
(neotree-toggle)

(add-to-list 'load-path "~/.emacs.d/lisp/tabbar-master")
(require 'tabbar)
(tabbar-mode)

(setq initial-frame-alist '((top . 20)
			    (left . 20)
			    (width . 140)
			    (height . 40)))

(set-default-font "-adobe-courier-medium-r-normal--18-180-75-75-m-110-iso8859-1")

(global-linum-mode 1) ; always show line numbers                              
(setq linum-format "%d")  ;set format

;;(defalias 'yes-or-no-p 'y-or-n-p)
(fset 'yes-or-no-p 'y-or-n-p)
