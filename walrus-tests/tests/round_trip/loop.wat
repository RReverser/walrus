(module
  (type (;0;) (func))
  (func $f (type 0)
    loop
    end)
  (export "inf_loop" (func $f)))

;; CHECK: (module
;; NEXT:    (type (;0;) (func))
;; NEXT:    (func (;0;) (type 0)
;; NEXT:      loop  ;; label = @1
;; NEXT:      end)
;; NEXT:    (export "inf_loop" (func 0)))
