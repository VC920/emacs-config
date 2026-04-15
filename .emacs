;; melpa package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; disable or enable any modes
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;(setq display-line-numbers-type = 'relative)
(global-display-line-numbers-mode 1)
(setq inhibit-splash-screen t)

;; ido
(require 'smex)
(ido-mode 1)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; set the style or theme
(setq c-default-style "linux" c-basic-offset 4)
(set-frame-font "Monospace-12")
(require 'gruber-darker-theme)
(load-theme 'gruber-darker t)

;; set key
(defun rc/duplicate-line ()
  "Duplicate current line"
  (interactive)
  (let ((column (- (point) (point-at-bol)))
	(line (let ((s (thing-at-point 'line t)))
		(if s (string-remove-suffix "\n" s) ""))))
    (move-end-of-line 1)
    (newline)
    (insert line)
    (move-beginning-of-line 1)
    (forward-char column)))

;; complete code
(require 'company)
(global-company-mode 1)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.0)
(setq company-backends '((company-clang company-file)))
(setq company-clang-insert-arguments nil)
