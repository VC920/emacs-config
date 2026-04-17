;; quike init
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'after-init-hook #'(lambda () (setq gc-ccons-threshold 800000)))

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
(global-company-mode 1)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.0)
(setq company-backends '(company-capf))

(setq eldoc-idle-delay 0.0)
(setq eglot-ignored-server-capabilities
      '(:documentOnTypeFormattingProvider
	:documentRangeFormattingProvider
	:documentFormattingProvider))
(setq eglot-server-programs
      '((c++-mode . ("clangd" "--header-insertion=never"))
        (c-mode   . ("clangd" "--header-insertion=never"))))
(add-hook 'eglot-managed-mode-hook (lambda () (eglot-inlay-hints-mode -1)))
(add-hook 'prog-mode-hook 'eglot-ensure)
