;; CUED's C/C++ style for c++-mode
;; Insert the following lines in your .emacs file

(add-to-list 'auto-mode-alist '("\\.ipp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.tcc\\'" . c++-mode))
(require 'cc-mode)
(setq c-default-style "stroustrup")
(setq-default indent-tabs-mode nil)
(add-hook 'c++-mode-hook '(lambda () (whitespace-mode 1)))
