;;; snlog-mode.el --- Major mode to view skynet log.

;; Author: m2q1n9
;; Created: 05-Dec-2015
;; Version: 0.1
;; Keywords: snlog

;;; Commentary:

;; Installation:
;;   - Put `snlog-mode.el' in your Emacs load-path.
;;   - Add this line to your .emacs file:
;;       (require 'snlog-mode)
;;       (add-to-list 'auto-mode-alist '("\\.snlog\\'" . snlog-mode))

;;; Code:

;;;###autoload
(define-derived-mode snlog-mode fundamental-mode "Snlog"
  "Major mode to view skynet log."
  (setq font-lock-defaults '((
    (".*-*\\(WARN\\|ERROR\\|error\\|failed\\|traceback\\)-*.*" . font-lock-warning-face)
    ("\\[:[0-9a-f]\\{8\\}\\]" . font-lock-comment-face)
    ("-*\\(DEBUG\\|INFO\\|LAUNCH\\|KILL\\) \\(snlua \\)?\\(snaxd \\)?" . font-lock-keyword-face)
    ("-*[0-9]\\{4\\}-[0-9]\\{2\\}-[0-9]\\{2\\} [0-9]\\{2\\}:[0-9]\\{2\\}:[0-9]\\{2\\}-*" . font-lock-constant-face)
    ("-*[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+\\( \\|:\\)[0-9]+-*" . font-lock-string-face)
))))

(provide 'snlog-mode)

;;; snlog-mode.el ends here
