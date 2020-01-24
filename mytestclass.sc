// class definition
MyTestClass {
	// class and instance variables with <setter and >getter
	classvar <>io = 7;
	var <>ia = 5;

// class method
	*hello {|argca = 4|
		"hello there!".postln
		^super.dumpInterface // mejorar ej
	}
// instance method
	hi { |argia = 2, argib = 4|
		(argia + argib).postln;
		"hi there!".postln
		^this.dump // mejorar ejemplo
	}
}