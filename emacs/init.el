(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages 
  '(cider
    rainbow-delimiters
    color-theme
    smex))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

; Hooks
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

; Enable ido-mode og smex
(ido-mode t)
(setq ido-enable-flex-matching t)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

; Font
(set-face-attribute 'default nil :height 100)
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))

; Color theme
(color-theme-initialize)
(color-theme-ld-dark)

; no startup msg  
(setq inhibit-startup-message t)        ; Disable startup message 

; Disable backup~ files
(setq make-backup-files nil) 
