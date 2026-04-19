;; quike init
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'after-init-hook #'(lambda () (setq gc-cons-threshold 800000)))

;; melpa package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; disable or enable any modes
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(setq make-backup-files nil)
(setq mode-line-modes nil)

;; ido
(require 'smex)
(ido-mode 1)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; set the style or theme
(require 'vscode-dark-plus-theme)
(load-theme 'vscode-dark-plus t)
(setq c-default-style "linux" c-basic-offset 4)
(setq indent-tabs-mode nil)
(set-frame-font "Monospace-12")

;; complete code
(require 'company)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.0)
(global-company-mode 1)

(require 'lsp-mode)
(setq lsp-idle-delay 0.0)
(setq eldoc-idle-delay 0.0)
(setq lsp-enable-on-type-formatting nil)
(setq lsp-clients-clangd-args '("--header-insertion=never"));
(setq lsp-headerline-breadcrumb-enable nil)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)

;; check error
(require 'flycheck)
(setq flycheck-display-errors-delay 0.0)
(setq lsp-diagnostics-provider :flycheck)
(setq lsp-ui-sideline-enable nil)
