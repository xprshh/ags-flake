'((bg . "#fafafa")          ;; Background color
  (fg . "#171717")          ;; Foreground (text) color
  (selection-bg . "#f6d32d") ;; Selection background
  (selection-fg . "#313234") ;; Selection foreground
  (cursor-bg . "#171717")    ;; Cursor background
  (cursor-fg . "#fafafa")    ;; Cursor foreground
  (black . "#afafb0")        ;; ANSI Black
  (red . "#f66151")          ;; ANSI Red
  (green . "#33d17a")        ;; ANSI Green
  (yellow . "#f6d32d")       ;; ANSI Yellow
  (blue . "#62a0ea")         ;; ANSI Blue
  (magenta . "#9141ac")      ;; ANSI Magenta
  (cyan . "#47b496")         ;; ANSI Cyan
  (white . "#3b3c3d")        ;; ANSI White
  (bright-black . "#bdbebf")  ;; Bright Black
  (bright-red . "#dd5742")    ;; Bright Red
  (bright-green . "#29bd6b")  ;; Bright Green
  (bright-yellow . "#ddbf23") ;; Bright Yellow
  (bright-blue . "#5891d6")   ;; Bright Blue
  (bright-magenta . "#82379d") ;; Bright Magenta
  (bright-cyan . "#3da087")   ;; Bright Cyan
  (bright-white . "#2d2d2e")) ;; Bright White


;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
