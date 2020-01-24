// example 1

// testing the class
MyTestClass.hello(2) // class method
MyTestClass.hi // instance method is not accesible by the class
MyTestClass.io // getting classvar io
MyTestClass.io_(10) // setting classvar io

// creating instance 1
a = MyTestClass.new // notice message new
a.hello // class method is not accesible by an instance
a.hi // hi message dfined by the instance method

// creating instance 2
b = MyTestClass() // notice the parenthesis
b.hello // error
b.hi(1, 1) // message hi or instance method hi
b.io // error getting a classvar
b.ia // getting instance variable value
b.ia_(13) // setting a value
