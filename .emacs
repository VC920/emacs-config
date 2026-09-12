(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(setq-default make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default cmake-tab-width 4)
(setq-default c-basic-offset 4)

(load-theme 'tango-dark 1)

;; ido
(ido-mode 1)
;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extaended-command)

;; mulitiple cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)

;; glsl
(add-to-list 'auto-mode-alist '("\\.vert\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.glsl\\'" . c-mode))
