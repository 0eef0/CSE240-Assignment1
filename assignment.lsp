; These are my basic logic gate functions

; This is the logic for an AND gate
(defun logicAND(a b)
    (if (= (+ a b) 2)
        (return-from logicAND 1)
        (return-from logicAND 0)
    )
)
; This is the logic for an OR gate
(defun logicOR(a b)
    (if (>= (+ a b) 1)
        (return-from logicOR 1)
        (return-from logicOR 0)
    )
)
; This is the lgoic for a XOR gate
(defun logicXOR(a b)
    (if (= (+ a b) 1)
        (return-from logicXOR 1)
        (return-from logicXOR 0)
    )
)

; These are the helper functions for my bitAdder

; This is the sum bit function
(defun sum-bit(x a b)
    (if (= (logicXOR (logicXOR a b) x) 1)
        (return-from sum-bit 1)
        (return-from sum-bit 0)
    )
)

; This is the carry out function
(defun carry-out(x a b)
    (if (= (logicOR (logicAND a b) (logicAND (logicOR a b) x)) 1)
        (return-from carry-out 1)
        (return-from carry-out 0)
    )
)

; This is the final bit adder function
(defun bitAdder(x a b)
    (setq ans "(")
    (setq ans (concatenate 'string ans (write-to-string (sum-bit x a b))))
    (setq ans (concatenate 'string ans " . "))
    (setq ans (concatenate 'string ans (write-to-string (carry-out x a b))))
    (setq ans (concatenate 'string ans ")"))

    (return-from bitAdder ans)
)

(print (bitAdder 0 0 0))
(print (bitAdder 0 0 1))
(print (bitAdder 0 1 0))
(print (bitAdder 0 1 1))
(print (bitAdder 1 0 0))
(print (bitAdder 1 0 1))
(print (bitAdder 1 1 0))
(print (bitAdder 1 1 1))


; These are the given test outputs for my function. They all match what was given in the assignment.
; "(0 . 0)"
; "(1 . 0)"
; "(1 . 0)"
; "(0 . 1)"
; "(1 . 0)"
; "(0 . 1)"
; "(0 . 1)"
; "(1 . 1)"