;; ---------------------------
;; Dijkstra: A dark blue color theme
;; Author: Guillermo Andres Urbano.
;; https://github.com/GuillermoGAndres/
;; ----------------------------

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme dijkstra
  "A dark blue color theme :)")

;; Only if you use linum-mode descomment, otherwise commet
;; https://www.reddit.com/r/emacs/comments/6vwwt9/native_line_numbering_setting_width_to_current/
;; https://www.reddit.com/r/emacs/comments/aa9rg7/how_to_make_line_numbers_in/
;; https://emacs.stackexchange.com/questions/5289/any-way-to-get-a-working-separator-line-between-fringe-line-numbers-and-the-buff
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Sizes.html
(custom-theme-set-variables
 'dijkstra
 '(linum-format "%4d") ;; insert a space between number
 '(fringe-mode 19)) ;; ;; make both fringes 19 pixels wide

;; ----------------------------------------

(let ((dijkstra-background      "#111928") ;; azul 7
      ;;(dijkstra-background      "#0C1A29")
      ;;(dijkstra-background      "#0d101e") ;; azul 1
      (dijkstra-foreground      "#d6d6d6")
      (dijkstra-mid-gray        "#666666")
      (dijkstra-darker-gray     "#14191f")
      (dijkstra-white           "#FFFFFF")
      (dijkstra-off-white       "#F8F8F0")
      (dijkstra-yellow-white    "#FFE792")
      (dijkstra-light-gray-blue "#d0dfe6")
      (dijkstra-lightest-blue   "#effbff")
      (dijkstra-lighter-blue    "#748aa6")
      (dijkstra-light-blue      "#6ee2ff")
      (dijkstra-blue            "#324357")
      (dijkstra-mode-line-blue  "#1e2338")
      (dijkstra-modeI-line-blue "#0b0e18")
      ;;(dijkstra-yellow          "#F0DFAF")
      (dijkstra-dark-blue       "#183c66")
      (dijkstra-darker-blue     "#1b232c")
      (dijkstra-green           "#95cc5e"))
  (custom-theme-set-faces
   'dijkstra

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,dijkstra-background :foreground ,dijkstra-foreground :weight semibold))))
   ;;`(default ((t (:background "#0d101e" :foreground "#d6d6d6" :weight semibold)))) ;; azul 1
   ;;'(default ((t (:background "#121930" :weight semibold)))) ;; azul 2
   ;;'(default ((t (:background "#13182a" :weight semibold)))) ;; azul 3
   ;;'(default ((t (:background "#0f1928" :weight semibold)))) ;; azul 4
   ;;'(default ((t (:background "#111928" :weight semibold)))) ;; azul 5
   ;;`(default ((t (:background "#0b0e18" :weight semibold)))) ;; azul 6
   ;;`(default ((t (:background "#111928" :weight semibold)))) ;; azul 7
   ;;'(default ((t (:background "#222b43" :weight semibold)))) ;; azul muy luminoso

   `(cursor  ((t (:background ,dijkstra-off-white))))
   ;;Marcado de la linea actual si es que esta activado.
   `(hl-line ((t (:background ,dijkstra-mid-gray))))

   ;; --------------------Mode line --------------------
   ;;`(mode-line ((t (:box nil :foreground ,dijkstra-foreground :background ,dijkstra-dark-blue))))
   `(mode-line ((t (:box nil :background ,dijkstra-mode-line-blue :foreground ,dijkstra-foreground))))
   ;;'(mode-line ((t (:background "#1e2338" :foreground :box nil))))

   ;;`(mode-line-inactive ((t (:box nil :background ,dijkstra-mid-gray :foreground ,dijkstra-light-gray-blue))))
   `(mode-line-inactive ((t (:box nil :background ,dijkstra-modeI-line-blue :foreground ,dijkstra-light-gray-blue))))
   ;;`(mode-line-inactive ((t (:box nil :background "#0b0e18" ))))


   ;; Dir-ed search prompt
   ;;`(minibuffer-prompt ((default (:foreground ,dijkstra-white))))
   ;;`(minibuffer-prompt ((default (:foreground "#FFC8AE")))) ;;  #FFBA99 or #FFC8AE-naranja
   `(minibuffer-prompt ((default (:foreground "#F0DFAF")))) ;;  Amarillo

   ;; Highlight region color
                                        ;`(region ((t (:foreground ,dijkstra-yellow-white :background ,dijkstra-darker-blue))))
   `(fringe ((t (:background ,dijkstra-background))))

   ;; ---------------- Code Highlighting ---------------
   ;; aquamarina : #7fffd4
   ;; Builtin
   ;;'(font-lock-builtin-face ((t (:foreground "#A4D1F2")))) ;;Azul claro #A4D1F2
   '(font-lock-builtin-face ((t (:foreground "#add8e6")))) ;;lightblue:  #add8e6

   ;; Comments
   '(font-lock-comment-face ((t (:foreground "#86B187" :slant italic)))) ; Comentarios de en linea
   '(font-lock-doc-face ((t (:foreground "#86B187")))) ;Docsting gris chido #9FB3C2 or verde chido #86B187 o verde con un tono poco nitido #8AB8A2.

   ;; Function names
   ;;'(font-lock-function-name-face ((t (:foreground "#F28B86")))) ; color salmon para las funcines
   '(font-lock-function-name-face ((t (:foreground "#F0DFAF")))) ; color amarillo fuerte igual al color que los types.
   ;;'(font-lock-function-name-face ((t (:foreground "#FAFFDB")))) ; color amarillo claro
   ;;'(font-lock-function-name-face ((t (:foreground "#FFDAB5")))) ; color naranja claro

   ;; Keywords
   '(font-lock-keyword-face ((t (:foreground "#377db0" :weight bold)))) ;Color azul marino
   ;;'(font-lock-keyword-face ((t (:foreground "#8AC6F2" :weight bold)))) ;Color azul muy chido.

   ;; Strings
   '(font-lock-string-face ((t (:foreground "#edb0a0")))) ;Cadenas naranja claro #edb0a0 or #D1907F
   ;;'(font-lock-string-face ((t (:foreground "#D1907F")))) ;Cadenas naranjas

   ;; Variables
   ;;'(font-lock-type-face ((t (:foreground "#fff4cc")))) ; amarillo claro
   '(font-lock-type-face ((t (:foreground "#ffe173")))) ; amarillo fuerte
   ;;'(font-lock-type-face ((t (:foreground "#FFDAB5")))) ; naranja claro
   
   ;; Constantes
   '(font-lock-constant-face ((t (:foreground "#F0DFAF")))) ;Contastantes amarillas

   ;;'(font-lock-variable-name-face ((t (:foreground "#9FB3C2")))) ;Color verde chido #8AB8A2 or gris #9FB3C2, para los nombre de los tipos.
   ;;'(font-lock-variable-name-face ((t (:foreground "#FFC8AE")))) ;#FFC8AE naranjas
   '(font-lock-variable-name-face ((t (:foreground "#d6d6d6")))) ; color de la letra

   ;;Warning
   `(font-lock-warning-face ((t (:foreground "#F28B86" :bold t))))

   ;; Amarillo #dcb62c, rojo #f37d6c , verde #87e5c6, amariillo contastantes #F0DFAF, otro amarillo
   
   ;; ---------------------------Company ---------------------------------------------------------
   '(company-preview ((t (:background "#373B41" :foreground "wheat"))))
   '(company-preview-common ((t (:inherit company-preview :foreground "wheat"))))
   '(company-tooltip-common ((t (:foreground "#F0DFAF")))) ;Color de las letras en coincidencia en pop
   '(company-tooltip-selection ((t (:background "#7B7B7B")))) ;Color de seleccion resaltado.
   '(company-tooltip ((t (:background "#1D1F21" :foreground "#C5C8C6")))) ;Color fondo y letra
   '(company-scrollbar-bg ((t (:background "#282A2E")))) ;Color de scrollbar
   '(company-scrollbar-fg ((t (:background "#373B41"))))
   '(company-tooltip-annotation ((t (:foreground "#F0DFAF"))))

   ;; ----------------------------Helm-----------------------------------------
   '(helm-source-header ((t (:extend t :foreground "#F0DFAF" :weight bold))))
   '(helm-match ((t (:extend t :foreground "#F0DFAF"))))
   '(helm-selection ((t (:extend t :background "gray37" :distant-foreground "black"))))

   '(helm-ff-directory ((t (:extend t :foreground "#F0DFAF"))))
   '(helm-ff-dotted-directory ((t (:extend t :foreground "#d6d6d6"))))

   ;; --------------------------Tabs-------------------------------------
                                        ; Buen color naranja: #e9967a
   '(tab-bar ((t (:inherit variable-pitch :background "#0C1A29" :foreground "#F0DFAF"))))
   '(tab-bar-tab-inactive ((t (:inherit tab-bar-tab :background "#0C1A29" :foreground "#d6d6d6"))))

   ;; -------------------------Highlight region color-----------------------------------

   ;; --------------------linum-mode --------------------------------
   ;;'(linum ((t (:inherit (shadow default) :background "#0d101e" :foreground "#F0DFAF")))) ;Lineas amarillas
   ;;'(linum ((t (:inherit (shadow default) :background ,dijkstra-background :foreground ,dijkstra-yellow)))) ;Lineas amarillas

   ;;'(linum ((t (:inherit (shadow default) :background "#13182D" :foreground "#B3B3B3")))) ;Lineas grises
   '(linum ((t (:inherit (shadow default) :background "#111928" :foreground "#4a4a4a")))) ;Lineas grises
   ;; Gano el grey29: #4a4a4a , con este color de numero, automaticamente se carga una sombra con marcar.
   ;; Gris muy plateado este grey59: #969696

   ;;-------------------- display-line-numbers-mode--- (otra modo como linum-mode, la diferencia puede resaltar el marcado linea actual)------
   '(line-number ((t (:inherit (shadow default) :foreground "#4a4a4a")))) ;; letras frises

   ;; Sin background
   ;;'(line-number-current-line ((t (:inherit line-number :foreground "#b5b5b5"))))

   ;; Con background
   '(line-number-current-line ((t (:inherit line-number :background "#404040" :foreground "#F6F3E8")))) ;; Con background
   
   ;; ----------- treemacs ----------------------------
   '(treemacs-fringe-indicator-face ((t (:foreground "#86B187"))))
   ;;'(region ((t (:foreground ,hoare-light-yellow :background "gray37"))))
   '(region ((t (:background "gray37"))))

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerlinec
   `(powerline-active1 ((t (:background ,dijkstra-off-white :foreground ,dijkstra-background))))

   ;;--------------------Web mode --------------------
   '(web-mode-doctype-face ((t (:foreground "lightblue")))) ;turquoise , lightblue, PaleTurquoise
   '(web-mode-html-tag-face ((t (:foreground "#398ecc")))); azul marino #398ecc
   '(web-mode-html-attr-name-face ((t (:foreground "#fff4cc")))) ; amarillo muy claro
   '(web-mode-html-attr-value-face ((t (:foreground "#edb0a0")))) ; naranja claro

   
   ;; '(web-mode-html-tag-face ((t (:foreground "#8AC6F2")))); azul
   ;;'(web-mode-html-tag-face ((t (:foreground "#FFF8DC")))); amarillo
   ;;'(web-mode-html-tag-face ((t (:foreground "#EFFBFF"))));Color de los brackets
   ;;'(web-mode-html-attr-name-face ((t (:foreground "#FFDAB5")))) ; naranja muy claro
   ;;'(web-mode-html-attr-name-face ((t (:foreground "#FFF8DC")))) ; amarillo claro
   ;;'(web-mode-html-attr-name-face ((t (:foreground "lightblue")))) ; azul-claro   
   ;;'(web-mode-html-attr-name-face ((t (:foreground "#BCEDDE")))) ;verde claro
   ;;'(web-mode-html-attr-value-face ((t (:foreground "#D1907F")))) ; naranja fuerte
   ;;'(web-mode-html-attr-value-face ((t (:foreground "#deaece")))) ; rosa fuerte
   ;;'(web-mode-html-attr-value-face ((t (:foreground "#e3bcd6")))) ; rosa claro
   ;;'(web-mode-comment-face ((t (:foreground "#EFFBFF")))) ;; Color blanco

   ;;----------------------JS2-mode------------------------------------
   '(js2-error ((t (:foreground "#ed5f70" :slant italic :weight semi-bold))))
   '(js2-warning ((t (:underline (:color "#EB9490" :style wave) :slant italic))))
   ;;'(js2-object-property ((t (:foreground "#FFDAB5")))) ; naranja claro
   '(js2-object-property ((t (:foreground "#d6d6d6" :slant italic)))) ; letra normal
   '(js2-function-call ((t (:foreground "#fff4cc")))) ; amarillo
   '(js2-external-variable ((t (:foreground "#FFDAB5")))) ; naranja claro
   '(js2-function-param ((t (:foreground "#d6d6d6")))) ;; color de la letra normal

   ;;--------------------diredfl------------------------------
   '(diredfl-date-time ((t (:foreground "#b8c4d7"))))
   '(diredfl-dir-heading ((t (:foreground "#ceeca4"))))
   '(diredfl-dir-name ((t (:foreground "#F0DFAF"))))
   '(diredfl-dir-priv ((t (:foreground "#96e7e5"))))
   '(diredfl-exec-priv ((t (:foreground "#D1907F"))))
   '(diredfl-file-name ((t nil)))
   '(diredfl-file-suffix ((t (:inherit diredfl-file-name))))
   '(diredfl-no-priv ((t nil)))
   '(diredfl-number ((t (:foreground "#F0DFAF"))))
   '(diredfl-read-priv ((t (:foreground "#ceeca4"))))
   '(diredfl-symlink ((t (:foreground "#96e7e5"))))
   '(diredfl-write-priv ((t (:foreground "#F0DFAF"))))

   )
  )


;;;###Autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background nil)))))))

(provide-theme 'dijkstra)

;; Local Variables:
;; no-byte-compile: t
;; End:
