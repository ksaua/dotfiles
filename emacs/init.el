(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages 
  '(helm
    cider))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(ido-mode)