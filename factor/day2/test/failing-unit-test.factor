USING: day2.greeter tools.test ;
IN: day2.failing-unit-test

{ "hello world" } [ "world" greeting ] unit-test
