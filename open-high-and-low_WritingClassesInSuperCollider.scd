




Open, High and Low: Writing classes in SuperCollider
// ICLC 2020, Limerick

Hernani Villaseñor
// Gradute Muisc Program
// Music Faculty, UNAM (Mexico)
// hernani.vr@gmail.com









// Why this workshop?

// Usually we live code with an interpreted and high level programming language as SuperCollider.

// When we understand how it works, maybe we want to develope our own tools or customize the program.

// It is possible to see how SuperCollider is programed because it is an Open Source and Free Software.

// Why not to start to program some structures?

// This is related to the question that some artists, composers and scholars have been formulated regarding the relationship between art and technology in the fields of digital art and media, such as Marshall McLuhan, Pierre Schaeffer, Jaisa Reichardt, Katherine Hayles or Thor Magnusson.


// In the case of this workshop the question is related to the relationship between live coding art practice and technological development.






// OK Let's start.

// Download the materials:
// https://github.com/hvillase/iclc2020-workshop

// What is a Class in SuperCollider?

// First, SuperCollider is an Object Oriented Programming paradigm (OOP), that means that the languge is composed by objects that respond to messages. These objects can comunicate with each other.

// A class is a mold, blueprint or template to make objects. A class contains the description and the behaivor of an object. It describes the object data and its interface.

// Elements and steps to program a class:

// 1. Name of the class or class definition: this is the name of the class and begins with an uppercase. A pair of curly brackets contain the elements of the class as variables, methods and arguments.

MyTestClass { }

// 2. Save the class: press the save menu and write the name of the class in lower case with the extension .sc and save it, preferently in your Extensions folder. There are two options:

Platform.userExtensionDir; // available for the user account

Platform.systemExtensionDir; // available for all users

// 3. Once you have saved your class recompile the Class Library:

// Language > Recompile Class Library
// or
// Ctrl + Shift + L

// 4. Methods

// A method describes the operation of a message sent to objects. A class has a method defintion for each message that an object responds.

// AnObject.message

// Class method: This is a method that implements a message for a class. Write an asterisk before the name of the class method and then open a pair of curly brakets. First letter of methods is lower case.

*classMethod { }

// Instance method: This is a method that implements a message for an obejct or instance of a class. Write the name and then a pair of curly brackets.

instanceMethod { }

// 5. The caret ^ or return symbol indicates what message, value or thing will return a method when it is called. This symbol is written at the end of a method. When no return is specified the method returns the class or the instance itself.

^"hello" // some message returns the word hello

// 6. Variables

// A variable is container for data. A variable needs a name, it could be a letter from a to z (except s that is for server) or a word. First letter is lower case.

// Class variable: it is defined by the keyword classvar. Its values are shared by all methods of the class, both class and instance methods, and with its subclasses. Write the keyword classvar, then the name of your variable. It is possible to initialize these variables with numbers or strings. You can put many variables separated by comas.

classvar num1 = 10, num2 = 17, name = "Nina";

// Instance variable: it is defined by the keyword var. An instance variable can be accessed and changed only inside the instance methods. Write the keyword var and then the name or names of your variables, separated by comas.

var num = 12;

var num1 = 7, num2 = 3;

// const: this is an instance variable with a constant value.

const num = 3;

// 7. Getter, setter and getter-setter

< // Getter: to get the value of a class or instance variable from outside. Write it before the variable name.

classvar <num = 12;
var <num = 10;

> // Setter: to set the value of a class or instance variable from outside. Write it before the variable name.

classvar >num = 12;
var >num = 10;

<> // Getter-setter: to get and set the value of a class or instance variable. Write it before the variable name.

classvar <>num = 12;
var <>num = 10;

// to get from outside these varibales, just put a period and write the variable name after the class name.

// 8. Special keywords: this and super

this // refers to the class or its instance, it's like you write MyClass.someMethod (the class) or a.someMethod (the instance). The kwyword this is an implicit argument of each method. You can't assign a value to this.

this.someMethod

super // refers to the superclass, it's like you write Object.someMethod or SuperClass.someMethod. You can use it to call methods of the SuperClass (The class from where it inherits its methods).

super.someSuperclassMathod

// 9. Specifying inheritance

// You can specify the inheritance of a class to its superclass like this

MyClass : MySuperClass {}

// If not inheritance is specified, the superclass is Object.

// 10. Arguments: these are words written after the keyword arg or between these symbols ||. The arguments are written after de first curly bracket of a method. An argument is a value that pass to the method. They can be initialized or not.

someMethod{arg arga = 10, argb = 100;} // two arguments

someMethod{|arga, argb|} // same as above

// 11. Now is time to write your own class.

...

// 12. Wait. How to call a class, and create an instance?

MyClass // call a class

a = MyClass.new // creates an instance of the class

// 13. How to get and set a value of an instance?

MyClass.num // getting the classvar num

a.num // getting the var num

MyClass.num_(8) // setting a value to a classvar

a.num_(8) // seting a value to an instance var

MyClass.num = 8 // another syntax style

// 14. How to set arguments of a method?

a.method(arga, argb) // set the values of method arguments if it has arguments

a.method(4, 5)

// THANK YOU FOR ATTENDING THIS WORKSHOP!

// References:

// Eldrige, A. (n.d.) Writing Plug-ins. Available: https://users.sussex.ac.uk/~alicee/modules/ACM/ACM_WorkshopMaterials.html#plugins [accessed: December 2019]

// Kendall, G. (n.d.) Writing Classes. Available: http://garykendall.net/classes-files/programming/programming.html [accessed: December 2019]

// Rohrhuber, J., De Campo, A. & Bovermann, T. (2011) Object Modeling, in SuperCollider Book.

// Subnaught (2015) OO windchime. Available: http://subnaught.org/supercollider/oo-windchime.html [accessed: December 2019]

// SuperCollider Help Files of:
Class.help
Classes
Writing Classes
Object.help
Introduction To Objects

// Further lectures:

// SuperCollider Help Files of:
Writing Help Files
Writing Unit Generators
