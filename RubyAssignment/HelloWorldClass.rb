class HelloWorldClass #define a class called HelloWorldClass
    #The constructor of the class with a parameter "name", it is used to initialize a new object of the class.
    def initialize(name) 
       #"capitalize" is used to return a copy of a string,
       #and make the first character of the string into uppercase, and the remainders to lowercase.
       #"@name" is an instance variable of the class.
       @name = name.capitalize 
    end
    #Define a method called "sayHi", which can print "Hello 'name'(the instance variable)" on the screen.
    def sayHi
        puts "Hello #{@name}!"
    end
end
#Build a object of the class, and initialize the instance variable to "{type your name here}".
hello = HelloWorldClass.new("{type your name here}")
#Call the method sayHi
hello.sayHi #=> Hello {type your name here}!
