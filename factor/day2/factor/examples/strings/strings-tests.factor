USING: examples.strings tools.test ;
IN: examples.strings.tests

{ t } [ "tacocat" palindrome? ] unit-test
{ f } [ "babby" palindrome? ] unit-test
