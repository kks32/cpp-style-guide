;; CUED's C/C++ style for c++-mode
;; Insert the following lines in your .emacs file

; start package.el with emacs
(require 'package)
; add MELPA to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
; initialize package.el
(package-initialize)
; start auto-complete with emacs
(require 'auto-complete)
; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)
; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)

;; Setting c++ mode for .ipp and .tcc files  
(put 'upcase-region 'disabled nil)
(add-to-list 'auto-mode-alist '("\\.ipp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.tcc\\'" . c++-mode))

;; Setting stroustup style as the default indentation style for c++
;; with tab spacing of 2
(require 'cc-mode)
(setq c-default-style "Stroustrup")
(setq-default c-basic-offset 2)
(setq-default indent-tabs-mode nil)
(add-hook 'c++-mode-hook '(lambda () (whitespace-mode 1)))

;; autocomplete
(add-to-list 'load-path "~/.emacs.d/")

; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
)
; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

; Clang format 
(require 'cc-mode)
(require 'clang-format)
(global-set-key [C-tab] 'clang-format-region)

; Show Paren Mode
(setq show-paren-delay 0)
(show-paren-mode 1)
