(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "grey" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal ))))
 '(cperl-array-face ((((class color) (background dark)) (:foreground "rgb:90/d0/60"))) t)
 '(cperl-hash-face ((((class color) (background dark)) (:foreground "rgb:d4/aa/59"))) t)
 '(cperl-nonoverrideable-face ((((class color) (background dark)) (:foreground "rgb:00/00/ff"))))
 '(cursor ((t (:background "grey" :foreground "black"))))
 '(cursor-type box)
 '(custom-face-tag ((t (:underline t))))
 '(font-lock-builtin-face ((((class color) (background dark)) (:foreground "rgb:dd/00/ff"))))
 '(font-lock-comment-face ((((class color) (background dark)) (:foreground "rgb:00/bb/00"))))
 '(font-lock-constant-face ((((class color) (background dark)) (:foreground "Aquamarine"))))
 '(font-lock-doc-face ((t (:foreground "rgb:6a/70/cc"))))
 '(font-lock-function-name-face ((((class color) (background dark)) (:foreground "rgb:33/99/dd"))))
 '(font-lock-keyword-face ((((class color) (background dark)) (:foreground "rgb:99/55/ff"))))
 '(font-lock-reference-face ((((class color) (background dark)) (:foreground "rgb:55/aa/aa"))))
 '(font-lock-string-face ((((class color) (background dark)) (:foreground "salmon"))))
 '(font-lock-type-face ((((class color) (background dark)) (:foreground "rgb:cc/44/66"))))
 '(font-lock-preprocessor-face ((((class color) (background dark)) (:foreground "rgb:33/cc/ff"))))
 '(font-lock-variable-name-face ((((class color) (background dark)) (:foreground "rgb:d0/dd/70"))))
 '(font-lock-warning-face ((((class color) (background dark)) (:bold t :foreground "red"))))
 ;;'(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) nil)))
 ;;'(mumamo-background-chunk-submode ((((class color) (min-colors 88) (background dark)) nil)))
 '(paren-face-match-light ((((class color)) nil))))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 ;;'(aquamacs-customization-version-id 95.5 t)
 '(blink-cursor-mode nil)
 '(tool-bar-mode nil)
 '(cursor-type box)
 '(font-lock-global-modes t)
;; '(font-lock-support-mode (quote lazy-lock-mode))
 '(font-lock-verbose t)
 '(global-font-lock-mode t nil (font-lock))
 ;;'(mumamo-chunk-coloring (quote no-chunks-colored))
 ;;'(mumamo-major-modes (quote ((php-mode php-mode) (html-mode nxhtml-mode) (css-mode css-mode) (java-mode java-mode) (ruby-mode ruby-mode) (perl-mode cperl-mode) (django-mode django-mode) (asp-js-mode javascript-mode) (asp-vb-mode visual-basic-mode) (javascript-mode javascript-mode ecmascript-mode))))
 '(nxhtml-skip-welcome t)
 '(transient-mark-mode t))

(if (window-system) (set-frame-size (selected-frame) 120 50))
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 120))

(autoload 'php-mode "php-mode" "PHP editing mode" t)
;;	(add-to-list 'auto-mode-alist '("\\.php3\\'" . php-mode))
;;	(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

(setq initial-frame-alist
 (cons '(cursor-type . box) 
           (copy-alist initial-frame-alist)
  )
)
(setq default-frame-alist 
  (cons '(cursor-type . box)
            (copy-alist default-frame-alist)
   )
)

(setq inhibit-startup-message t)
(setq cperl-highlight-variables-indiscriminately t)
(mapc
     (lambda (pair)
       (if (eq (cdr pair) 'perl-mode)
           (setcdr pair 'cperl-mode)))
     (append auto-mode-alist interpreter-mode-alist))

(setq dabbrev-case-replace nil)
(setq cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t)

(setq-default indent-tabs-mode nil)

(autoload 'javascript-mode "javascript" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))

(autoload 'nxhtml-mode "nxhtml" "Major mode for editing XHTML documents." t)
(add-to-list 'auto-mode-alist '("\\.html\\'" . nxhtml-mumamo-mode))

(autoload 'tt-mode "template-toolit" nil t)
(add-to-list 'auto-mode-alist '("\\.tt2\\'" . tt-mode))

(add-to-list 'auto-mode-alist '("\\.t\\'" . cperl-mode))

(load "/Users/ramesh/.emacs.d/nxhtml/autostart.el")

(setq javascript-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq javascript-indent-level 2))))

(show-paren-mode 1)

(load-library "cperl-mode")
 (defun cperl-backward-to-start-of-continued-exp (lim)
   (goto-char (1+ lim))
   (forward-sexp)
   (beginning-of-line)
   (skip-chars-forward " \t")
 )

(require 'scala-mode-auto)
;; Load the ensime lisp code...
(add-to-list 'load-path "/Users/ramesh/Downloads/ensime_2.9.1-0.7.6/elisp/")
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(load "~/Downloads/haskell-mode-2.8.0/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(add-hook 'scala-mode-hook (lambda () (abbrev-mode 1)))

(setq frame-title-format '("%b - %f"))
(define-abbrev-table 'global-abbrev-table '(
    ("alpha" "α" nil 0)
    ("beta" "β" nil 0)
    ("gamma" "γ" nil 0)
    ("theta" "θ" nil 0)
    ("inf" "∞" nil 0)
    ("appb" "⊛" nil 0)
    ("forever" "∞" nil 0)
    ("jjoin" "μ" nil 0)
    ("cojoin" "υ" nil 0)
    ("copure" "ε" nil 0)
    ("comap" "∙" nil 0)
    ("mmap" "∘" nil 0)
    ("ppure" "η" nil 0)
    ("kleisli" "☆" nil 0)
    ("cokleisli" "★" nil 0)
    ("dual" "σ" nil 0)
    ("equal" "≟" nil 0)
    ("notequal" "≠" nil 0)
    ("sum" "∑" nil 0)
    ("aany" "∃" nil 0)
    ("aall" "∀" nil 0)
    ("ttraverse" "↦" nil 0)
    ("ar1" "→" nil 0)
    ("ar2" "⇒" nil 0)
    ))


;;(load-file (let ((coding-system-for-read 'utf-8))
;;                (shell-command-to-string "agda-mode locate")))
