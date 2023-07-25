(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; close startup screen
(setq inhibit-startup-screen t)
;; disable scrol ring bell
(setq ring-bell-function 'ignore)

;; markdown-mode config
(add-to-list 'load-path "~/.emacs.d/lisp")
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(setq make-backup-files nil)

;; neotree: left dir manager
(add-to-list 'load-path "~/.emacs.d/lisp/emacs-neotree-dev")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme 'ascii)
(setq neo-smart-open t)
(neotree-toggle)

;; tabbar: top opened file bar
(add-to-list 'load-path "~/.emacs.d/lisp/tabbar-master")
(require 'tabbar)
(tabbar-mode 1)
;; config tabbar-buffer-groups
(defun tabbar-buffer-groups ()
  (list
   (cond
    ((string-equal "*" (substring (buffer-name) 0 1))
     "Emacs Buffer"
     )
    (t
     "User Buffer"
     )
    )
   )
  )
(setq tabbar-buffer-groups-function 'tabbar-buffer-groups)

;; set frame size & position
(setq initial-frame-alist '((top . 20)
			    (left . 20)
			    (width . 140)
			    (height . 40)))

;; set default fonr
;;(set-default-font "-adobe-courier-medium-r-normal--18-180-75-75-m-110-iso8859-1")
;;(set-default-font "-PfEd-DejaVu Sans Mono-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1")
(global-linum-mode 1) ; always show line numbers                              
(setq linum-format "%d")  ;set format


(defalias 'yes-or-no-p 'y-or-n-p)

;; config themes
(setq custom-enabled-themes (quote (tango-dark)))

;; config badwolf theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/theme/")
(load-theme 'badwolf t)

;; show pairs parentheses
(show-paren-mode t)
(require 'paren)
(set-face-background 'show-paren-match "#def")
(set-face-foreground 'show-paren-match (face-background 'default))
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

;; emacs smooth scrolling
(setq scroll-step 1 
      scroll-margin 2
      scroll-conservatively 10000) 

(require 'key-bind)
