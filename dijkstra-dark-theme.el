;; ---------------------------
;; Dijkstra-dark: A dark color theme
;; Author: Guillermo Andres Urbano.
;; https://github.com/GuillermoGAndres/
;; ----------------------------

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme dijkstra-dark
  "A dark color theme :)")

(let ((dijkstra-dark-background      "#14191F")
      (dijkstra-dark-foreground      "#d6d6d6")
      (dijkstra-dark-mid-gray        "#666666")
      (dijkstra-dark-darker-gray     "#14191f")
      (dijkstra-dark-white           "#FFFFFF")
      (dijkstra-dark-off-white       "#F8F8F0")
      (dijkstra-dark-yellow-white    "#FFE792")
      (dijkstra-dark-light-gray-blue "#d0dfe6")
      (dijkstra-dark-lightest-blue   "#effbff")
      (dijkstra-dark-lighter-blue    "#748aa6")
      (dijkstra-dark-light-blue      "#6ee2ff")
      (dijkstra-dark-blue            "#324357")
      (dijkstra-dark-dark-blue       "#183c66")
      (dijkstra-dark-darker-blue     "#1b232c")
      (dijkstra-dark-green           "#95cc5e"))
  (custom-theme-set-faces
   'dijkstra-dark

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,dijkstra-dark-background :foreground ,dijkstra-dark-foreground))))
   `(cursor  ((t (:background ,dijkstra-dark-off-white))))
   `(hl-line ((t (:background ,dijkstra-dark-mid-gray))))
   
   ;; --------------------Mode line --------------------
   `(modeline ((t (:background ,dijkstra-dark-dark-blue :foreground ,dijkstra-dark-foreground))))
   `(mode-line-inactive ((t (:box nil :background ,dijkstra-dark-mid-gray :foreground ,dijkstra-dark-light-gray-blue))))
   `(mode-line ((t (:box nil :foreground ,dijkstra-dark-foreground :background ,dijkstra-dark-dark-blue))))   
   ;; Dir-ed search prompt
   `(minibuffer-prompt ((default (:foreground ,dijkstra-dark-white))))
   ;; Highlight region color
   ;`(region ((t (:foreground ,dijkstra-dark-yellow-white :background ,dijkstra-dark-darker-blue))))
   `(fringe ((t (:background ,dijkstra-dark-background))))

   ;; ---------------- Code Highlighting ---------------
   ;; aquamarina : #7fffd4
   ;; Builtin
   '(font-lock-builtin-face ((t (:foreground "#A4D1F2")))) ;;Azul claro #A4D1F2
   ;; Comments
   '(font-lock-comment-face ((t (:foreground "#4F5A63")))) ; Comentarios de en linea
   '(font-lock-doc-face ((t (:foreground "#86B187")))) ;Docsting gris chido #9FB3C2 or verde chido #86B187 o verde con un tono poco nitido #8AB8A2.
   ;; Function names   
   ;;'(font-lock-function-name-face ((t (:foreground "#F28B86")))) ; color salmon para las funcines
   ;;'(font-lock-function-name-face ((t (:foreground "#F0DFAF")))) ; color amarillo fuerte igual al color que los types.
   ;;'(font-lock-function-name-face ((t (:foreground "#FAFFDB")))) ; color amarillo claro  
   '(font-lock-function-name-face ((t (:foreground "#FFDAB5")))) ; color naranja claro
   ;; Keywords
   '(font-lock-keyword-face ((t (:foreground "#8AC6F2" :weight normal)))) ;Color azul muy chido.
   ;; Strings
   '(font-lock-string-face ((t (:foreground "#D1907F")))) ;Cadenas naranjas
   ;; Variables
   '(font-lock-type-face ((t (:foreground "#F0DFAF")))) ; Clases y types amarillas
   '(font-lock-constant-face ((t (:foreground "#F0DFAF")))) ;Contastantes amarillas   
   '(font-lock-variable-name-face ((t (:foreground "#9FB3C2")))) ;Color verde chido #8AB8A2 or gris #9FB3C2, para los nombre de los tipos.
   ;;Warning
   `(font-lock-warning-face ((t (:foreground "#F28B86" :bold t))))

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
   '(linum ((t (:inherit (shadow default) :background "#14191F" :foreground "#F0DFAF"))))
   '(treemacs-fringe-indicator-face ((t (:foreground "#86B187"))))
   ;;'(region ((t (:foreground ,hoare-light-yellow :background "gray37"))))
   '(region ((t (:background "gray37"))))
   
   ;; ---------------- Package Specific Stuff -----------
   ;; Powerlinec
   `(powerline-active1 ((t (:background ,dijkstra-dark-off-white :foreground ,dijkstra-dark-background))))


   )
)


;;;###Autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background nil)))))))

(provide-theme 'dijkstra-dark)

;; Local Variables:
;; no-byte-compile: t
;; End:
