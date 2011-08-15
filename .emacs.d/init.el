;; If not explicitly defined otherwise, use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Don't show startup message or menu bar
(setq inhibit-startup-message t)
(menu-bar-mode 0)

;; Load libraries from ~/.emacs.d/
(add-to-list 'load-path "~/.emacs.d/")

;; required libraries
(require 'column-marker)

;; make column marker at line 80 for python mode
(add-hook 'python-mode-hook 
	(lambda () 
	  (define-key python-mode-map "\C-m" 'newline-and-indent)
	  (setq indent-tabs-mode nil)
	  (setq-default tab-width 4)
	  (column-marker-1 80)
))


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)

