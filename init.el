;;; init
(setq byte-compile-warnings '(cl-functions))
(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)
;;;; package config
(unless package-archive-contents
  (package-refresh-contents)
  )
(setq my-package-list '(use-package))

;; programmatically install/ensure installed
;; pkgs in your personal list
(dolist (package my-package-list)
  (unless (package-installed-p package)
    (package-install package)))

(org-babel-load-file "~/.emacs.d/emacs.org")
					;(load "~/.emacs.d/editor.el")
					;(load "~/.emacs.d/time.el")
					;(load "~/.emacs.d/data.el")
					;(load "~/.emacs.d/programming.el")
					;(load "~/var/variable.el")

;;;; config
(set-default-coding-systems 'utf-8)
(server-start)
					;'(helm-minibuffer-history-key "M-p")
					;'(emacs-everywhere-frame-parameters '((name . "emacs-everywhere") (width . 120) (height . 80)))
;;;; custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "/Users/hamkihan/.emacs.d/bookmarks")
 '(org-blank-before-new-entry '((heading) (plain-list-item)))
 '(org-habit-graph-column 80)
 '(org-tags-column -30)
 '(package-selected-packages
   '(flyspell-correct flyspell-popup register-list iregister register-channel register-quicknav org-tanglesync org-ql))
 '(window-min-height 6)
 '(window-min-width 32))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blamer-face ((t :foreground "#7a88cf" :background nil :height 140 :italic t)))
 '(dashboard-heading ((t (:inherit font-lock-keyword-face :foreground "#6272a3"))))
 '(dashboard-items-face ((t (:inherit widget-button :foreground "#6272b1"))))
 '(dashboard-no-items-face ((t (:inherit widget-button :foreground "#6272a4"))))
 '(dashboard-text-banner ((t (:inherit font-lock-keyword-face :foreground "#6272a4"))))
 )
(put 'upcase-region 'disabled nil)
