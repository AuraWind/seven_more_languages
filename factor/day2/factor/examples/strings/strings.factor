USING: kernel sequences io ;
IN: examples.strings

: palindrome? ( str -- bool )
  dup reverse = ;
