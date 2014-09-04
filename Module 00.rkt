;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Module 00|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 1
; Illustrates nesting of arguments
(* 366 (* 24 (* 60 60)))
; Illustrates how we can use multiple arguments
(* 366 24 60 60)
; Constants to describe time
(define reg_year_days 365)
(define leap_day 1)
(define hours_in_day 24)
(define min_in_hr 60)
(define sec_in_min 60)
; Formula using time constants that sums seconds in a regular year and seconds in a leap day
(+ (* reg_year_days hours_in_day min_in_hr sec_in_min)
   (* leap_day hours_in_day min_in_hr sec_in_min)
   )

; Ex 2
(> (/ 100 3) (/ (+ 100 3) (+ 3 3)))

; Ex 3
; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celsius.
; Examples:
; (f->c 32)  => 0
; (f->c 100) => 37.77777777777778
(define (f->c f_temp)
    (* 5/9 (- f_temp 32))
  )

; Ex 4
; tip : NonNegNumber Number[0.0,1.0] -> Number
; GIVEN: the amount of the bill in dollars and the
; percentage of tip
; RETURNS: the amount of the tip in dollars.
; Examples:
; (tip 10 0.15)  => 1.5
; (tip 20 0.17)  => 3.4
(define (tip bill_total tip_amt)
  (* bill_total tip_amt)
  )

; Ex 5
; sq : Number -> NonNegNumber
; GIVEN: number to compute a square for
; RETURNS: the square of the given number
; Examples:
; (sq 5)   => 25
; (sq 1)   => 1
; (sq -12) => 144
(define (sq num)
  (cond
    [(number? num) (expt num 2)]
    [else "This function requires a number as input."]
    )
  )

; Ex 6
; quadratic-root : Number Number Number -> Number
; GIVEN: a, b, and c as constants of equation 
; RETURNS: quadratic root of the equation
; Examples:
; (quadratic-root ) =>   
; (quadratic-root ) =>  

; Ex 7
; circumference : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its circumference, using the formula 2 * pi * r.
; Examples:
; (circumference 1) => 6.283185307179586 
; (circumference 0) => 0
(define (circumference radius)
  (* 2 pi radius)
  )

; Ex 8
; circle-area : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its area in units^2, using the formula pi * (r^2).
; Examples:
; (circle-area 1) => 3.141592653589793
; (circle-area 5) => 78.53981633974483
; (circle-area 7) => 153.93804002589985
(define (circle-area radius)
  (* pi (sqr radius))
  )

; Ex 9
; even? : Number -> Boolean
; GIVEN: an arbitrary number 
; RETURNS: true if number is divisible by 2, else false
; Examples:
; (even? 1)    => false
; (even? 2)    => true
; (even? 4)    => true
; (even? -9)   => false
; (even? -104) => true
(define (even? arg)
  (= (remainder arg 2) 0)
  )

; Ex 10
; two_largest_sum : Number Number Number -> Number
; GIVEN: three numbers in any order
; RETURNS: the sum of the largest two numbers
; Examples:
; (two_largest_sum 1 2 3)    => 5
; (two_largest_sum -8 7 -3)  => 4
; (two_largest_sum 0 0 0)    => 0
; (two_largest_sum 100 2 99) => 199
(define (two_largest_sum a b c)
  (cond
    ; check if a is greater than b
    [(> a b)
     (cond
       [(> b c) (+ a b)]
       [else (+ a c)]
       )
     ]
     ; check if a is greater than c--if it got here, then c is smallest
     [(> a c) (+ a b)]
     ; a must be smaller than both so add b and c
     [else (+ b c)]
     )
  )