===============================================================================================================================================

1) What is ruby.

Ruby is a pure object-oriented programming language. It was created in 1993 by Yukihiro Matsumoto of Japan.

===============================================================================================================================================

2) Features of Ruby.

1) Object-oriented
2) Flexibility
3) Expressive feature
4) Mixins
5) Visual appearance
6) Dynamic typing and Duck typing
7) Exception handling
8) Garbage collector
9) Portable
10) Keywords
11) Statement delimiters
12) Variable constants
13) Naming conventions
14) Keyword arguments
15) Method names
16) Singleton methods
17) Missing method
18) Case Sensitive

===============================================================================================================================================

3) Ruby - Syntax

 Let us write a simple program in ruby. All ruby files will have extension .rb.

 #!/usr/bin/ruby -w

 puts "Hello, Ruby!";

 Here, we assumed that you have Ruby interpreter available in /usr/bin directory. Now, try to run this program as follows −

 $ ruby test.rb

 This will produce the following result −

 Hello, Ruby!

===============================================================================================================================================

4) Whitespace in Ruby Program.

 Whitespace characters such as spaces and tabs are generally ignored in Ruby code,
 except when they appear in strings. Sometimes, however, they are used to interpret
 ambiguous statements. Interpretations of this sort produce warnings when the -w option is enabled. 

 Example
 
 a + b is interpreted as a+b ( Here a is a local variable)
 a  +b is interpreted as a(+b) ( Here a is a method call)

===============================================================================================================================================

5) Ruby Identifiers.

 Identifiers are names of variables, constants, and methods. Ruby identifiers are case sensitive.
 It means Ram and RAM are two different identifiers in Ruby.

 Ruby identifier names may consist of alphanumeric characters(yogesh1234) and the underscore character ( _ ).

==============================================================================================================================================

6) Ruby BEGIN Statement.

 Syntax
 
 BEGIN {
   code
 }

 Declares code to be called before the program is run.

 Example
 
 Live Demo
 #!/usr/bin/ruby

 puts "This is main Ruby Program"

 BEGIN {
   puts "Initializing Ruby Program"
 } 

 This will produce the following result −

 Initializing Ruby Program
 This is main Ruby Program

===============================================================================================================================================

7) Ruby END Statement.

 Syntax
 END {
   code
 }
 
 Declares code to be called at the end of the program.

 Example

 Live Demo
 #!/usr/bin/ruby

 puts "This is main Ruby Program"

 END {
   puts "Terminating Ruby Program"
 }
 BEGIN {
   puts "Initializing Ruby Program"
 }
 
 This will produce the following result −

 Initializing Ruby Program
 This is main Ruby Program
 Terminating Ruby Program

===============================================================================================================================================

8) What is class.

 Ruby is a pure Object Oriented Programming Language. An object-oriented program consists of Classes and Objects.
 An object is an entity that serves as a container for data and also controls access to the data.

 A class is like a blueprint that allows you to create objects and to create methods that relate to those objects.
 For example, you might use a Shape class to make different shapes like Rectangle, Square, Circle, and so on.
 An object is an instance of a class.

===============================================================================================================================================

9) what is a objects.

 Objects are instances of the class. You will now learn how to create objects of a class in Ruby. You can create objects
 in Ruby by using the method new of the class. The method new is a unique type of method, which is predefined in the Ruby library.
 The new method belongs to the class methods.

===============================================================================================================================================

10) what is Local Variables.

  Local Variables − Local variables are the variables that are defined in a method. Local variables are not
  available outside the method. You will see more details about method in subsequent chapter. Local variables
  begin with a lowercase letter or _.

 

===============================================================================================================================================

11) what is Instance Variables.

  Instance Variables − Instance variables are available across methods for any particular instance or object.
  That means that instance variables change from object to object. Instance variables are preceded by the at
  sign (@) followed by the variable name.

  Uninitialized instance variables have the value nil and produce warnings with the -w option.

  #!/usr/bin/ruby

 class Customer
 
  def initialize(id, name, addr)

      @cust_id = id

      @cust_name = name

      @cust_addr = addr

   end

   def display_details()

      puts "Customer id #@cust_id"

      puts "Customer name #@cust_name"

      puts "Customer address #@cust_addr"

   end
 end

 # Create Objects

 cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")

 cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

 # Call Methods

 cust1.display_details()

 cust2.display_details()

 Here, @cust_id, @cust_name and @cust_addr are instance variables. This will produce the following result −

 Customer id 1

 Customer name John

 Customer address Wisdom Apartments, Ludhiya

 Customer id 2

 Customer name Poul

 Customer address New Empire road, Khandala

===============================================================================================================================================

12) what is Class Variables.

  Class Variables − Class variables are available across different objects. A class variable belongs to the
  class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.

  Class variables begin with @@ and must be initialized before they can be used in method definitions.

 Referencing an uninitialized class variable produces an error. Class variables are
 shared among descendants of the class or module in which the class variables are defined.

 Overriding class variables produce warnings with the -w option.

 #!/usr/bin/ruby

 class Customer
 
   @@no_of_customers = 0
 
   def initialize(id, name, addr)
 
      @cust_id = id
 
      @cust_name = name
 
      @cust_addr = addr
   end
 
  def display_details()
 
      puts "Customer id #@cust_id"

      puts "Customer name #@cust_name"

      puts "Customer address #@cust_addr"

   end

   def total_no_of_customers()

      @@no_of_customers += 1

      puts "Total number of customers: #@@no_of_customers"
   end
 end

 # Create Objects

 cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
 
 cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

 # Call Methods

 cust1.total_no_of_customers()

 cust2.total_no_of_customers()

 Here @@no_of_customers is a class variable. This will produce the following result −

 Total number of customers: 1
 
 Total number of customers: 2

===============================================================================================================================================

13) what is Global Variables.

  Global Variables − Class variables are not available across classes. If you want to have a single variable,
  which is available across classes, you need to define a global variable.
  The global variables are always preceded by the dollar sign ($).
 
  Uninitialized global variables have the value nil and produce warnings with the -w option.

  Assignment to global variables alters the global status. It is not recommended to use global variables.They make programs cryptic.

  #!/usr/bin/ruby

 $global_variable = 10
 
 class Class1
 
   def print_global
 
     puts "Global variable in Class1 is #$global_variable"

   end
end

class Class2

   def print_global

      puts "Global variable in Class2 is #$global_variable"

   end
end

class1obj = Class1.new

class1obj.print_global

class2obj = Class2.new

class2obj.print_global

 NOTE − In Ruby, you CAN access value of any variable or constant by putting a hash
 (#) character just before that variable or constant.

Global variable in Class1 is 10

Global variable in Class2 is 10

===============================================================================================================================================

14) what is s new keyword 
 
 The new keyword a work three types.

 loading , instances , initialize.

===============================================================================================================================================

15) Explain some differences between Ruby and Python.

 Similarities:

   High level language
   Support multiple platforms
   Use interactive prompt called irb
   Server side scripting language

 Differences:
  
   Ruby is fully object oriented while Python is not.

   Ruby supports EclipseIDE while Python supports multiple IDEs.

   Ruby use Mixins while Python doesn't.

   Ruby supports blocks, procs and lambdas while Python doesn't.

===============================================================================================================================================

16) What are class libraries in Ruby?

  Ruby class libraries contain variety of domain such as thread programming, data types, various domains. Following is a list of domains
  which has relevant class libraries:

  Text processing: File, String, Regexp for quick and clean text processing. 
  
  CGI Programming: There are supporting class library for CGI programming support like, data base interface, eRuby,
                   mod_ruby for Apache, text processing classes.

  Network programming: Various well-designed sockets are available in ruby for network programming.

  GUI programming: Ruby/Tk and Ruby/Gtk are the classes for GUI programming

  XML programming: UTF-8 text processing regular expression engine make XML programming very handy in ruby.

===============================================================================================================================================

17) Name some operators used in Ruby.

  Operators are a symbol which is used to perform different operations.

  Unary operator

  Airthmetic operator

  Bitwise operator

  Logical operator

  Ternary operator

===============================================================================================================================================

18) What is RubyGems in Ruby programming language?

  RubyGems provides a standard format for distributing ruby programs and libraries.
  It works as a package manager for the Ruby programming language.

  RubyGems is now a part of the standard library from Ruby version 1.9.

===============================================================================================================================================

19) Explain Ruby data types.

  There are different data types in Ruby:

  Numbers

  Strings

  Symbols

  Hashes

  Arrays

  Booleans

===============================================================================================================================================

20) What is the use of load and require in Ruby?

  In Ruby, load and require both are used for loading the available code into the current code.
  In cases where loading the code required every time when changed or every times someone hits the URL, it is suggested to use 'load'.

  It case of autoload, it is suggested to use 'require'.

===============================================================================================================================================

21) Explain Ruby if-else statement.

  The Ruby if-else statement is used to test condition. There are various types of statement in Ruby.

  if statement
  
  if-else statement

  if-else-if (elsif) statement

  ternary statement

===============================================================================================================================================

22) Explain case statement in Ruby.

  In Ruby, we use 'case' instead of 'switch' and 'when' instead of 'case'.
  The case statement matches one statement with multiple conditions just like a switch statement in other languages.

===============================================================================================================================================

23) Explain for loop in Ruby.
  
  Ruby for loop iterates over a specific range of numbers. Hence, for loop is used if a program has fixed number of itrerations.

  Ruby for loop will execute once for each element in expression.

===============================================================================================================================================

24) Explain while loop in Ruby.

  Ruby while loop is used to iterate a program several times. If the number of iterations is not fixed

  for a program, while loop is used.

===============================================================================================================================================

25) Explain do while loop in Ruby.

  Ruby do while loop iterates a part of program several times. In this, loop will execute at least once because
  do while condition is written at the end.

===============================================================================================================================================

26) Explain until loop in Ruby.

  Ruby until loop runs until the given condition evaluates to true. It exits the loop when condition becomes true.
  It is opposite of the while loop.

===============================================================================================================================================

27) Explain break statement in Ruby.

  Ruby break statement is used to terminate a loop. It is mostly used in while loop where value is printed till the condition is true.

===============================================================================================================================================

28) Explain next statement in Ruby.

  Ruby next statement is used to skip loop's next iteration. Once the next statement is executed, no further iteration will be performed.

===============================================================================================================================================

29) Explain retry statement in Ruby.

  Ruby retry statement is used to repeat the whole loop iteration from the start.

===============================================================================================================================================

30) Explain Ruby object.

  Object is the default root of all Ruby objects. Ruby objects inherit from BasicObject which allows creating alternate object hierarchies.

===============================================================================================================================================

31) Define Ruby methods.
  
  Ruby method prevent us from writing the same code in a program again and again. Ruby methods are similar to functions in other languages.

===============================================================================================================================================

32) What are Ruby blocks.

  Ruby code blocks are called closures in other programming languages. It consist of a group of codes which is always
  enclosed with braces or written between do...end.

===============================================================================================================================================

33) In how many ways a block is written in Ruby.

  A block is written in two ways:

  Multi-line between do and end

  Inline between braces {}

  Both are same and have the same functionality.

===============================================================================================================================================

34) What is yield statement in Ruby.

  The yield statement is used to call a block within a method with a value.

===============================================================================================================================================

35) Explain ampersand parameter (&block) in Ruby.

  The &block is a way to pass a reference (instead of a local variable) to the block to a method.

  Here, block word after the & is just a name for the reference, any other name can be used instead of this.

===============================================================================================================================================

36) Explain module mixins in Ruby.

  Ruby doesn't support multiple inheritance. Modules eliminate the need of multiple inheritance using mixin in Ruby.

  A module doesn't have instances because it is not a class. However, a module can be included within a class.

  When you include a module within a class, the class will have access to the methods of the module.

===============================================================================================================================================

37) What are Ruby arrays and how they can be created?

  Ruby arrays are ordered collections of objects. They can hold objects like integer, number, hash, string, symbol or any other array.

  Its indexing starts with 0. The negative index starts with -1 from the end of the array. For example,
 -1 indicates last element of the array and 0 indicates first element of the array.

  A Ruby array is created in many ways.

  Using literal constructor []

  Using new class method

===============================================================================================================================================

38) How to access Ruby array elements? How many methods are used to access Ruby elements.?

  Ruby array elements can be accessed using #[] method. You can pass one or more than one arguments or even a range of arguments.

  Syntax:

  #[] method  

  Methods used to access Ruby elements:

  at method

  slice method

  fetch method
 
  first and last method

  take method

  drop method

===============================================================================================================================================

39) In how many ways items can be added in an array in Ruby?

  Ruby array elements can be added in different ways.

  push or <<

  unshift

  insert

===============================================================================================================================================

40) In how many ways items can be removed from array in Ruby?

  Ruby array elements can be removed in different ways.

  pop

  shift

  delete

  uniq

===============================================================================================================================================

41) Explain Ruby hashes.

  A Ruby hash is a collection of unique keys and their values. They are similar to arrays but array use integer
  as an index and hash use any object type. They are also called associative arrays, dictionaries or maps.

  If a hash is accessed with a key that does not exist, the method will return nil.

===============================================================================================================================================

42) How to create a new time instance in Ruby?

  A new Time instance can be created with ::new. This will use your current system's time.
  Parts of time like year, month, day, hour, minute, etc can also be passed.

  While creating a new time instance, you need to pass at least a year.
  If only year is passed, then time will default to January 1 of that year at 00:00:00 with current system time zone.

===============================================================================================================================================

43) Explain Ruby ranges. What are the ways to define ranges?

  Ruby range represents a set of values with a beginning and an end. They can be constructed
  using s..e and s...e literals or with ::new.

  The ranges which has .. in them, run from beginning to end inclusively.
  The ranges which has ... in them, run exclusively the end value.

  Ruby has a variety of ways to define ranges.

  Ranges as sequences
  Ranges as conditions
  Ranges as intervals

===============================================================================================================================================

44) What are Ruby iterators?

  Iterators are nothing but methods supported by collections. Objects that store a group of data members
  are called collections. In Ruby, arrays and hashes can be termed collections.

  Iterator is a concept used in object-oriented language. Iteration means doing one thing many times like a loop.

  The loop method is the simplest iterator. They return all the elements from a collection, one after the other.
  Arrays and hashes come in the category of collection.

===============================================================================================================================================

45) How many iterators are there in Ruby?*

  Following iterators are there in Ruby:

  each iterator

  times iterator

  upto and downto iterator

  step iterator

  each_line iterator

===============================================================================================================================================

46) Name different methods for IO console in Ruby?*

  The IO console provides different methods to interact with console. The class IO provides following basic methods:

  IO::console

  IO#raw#raw!

  IO#cooked

  IO#cooked!

  IO#getch

===============================================================================================================================================
 47) How to open a file in Ruby?

   A Ruby file can be created using different methods for reading, writing or both.

   There are two methods to open a file in Ruby.

   File.new method : Using this method a new file can be created for reading, writing or both.
   File.open method : Using this method a new file object is created. That file object is assigned to a file.
   Difference between both the methods is that File.open method can be associated with a block while File.new method can't.

   Syntax:

   f = File.new("fileName.rb")  
   
   Or,

   File.open("fileName.rb", "mode") do |f| 

===============================================================================================================================================

48) How to read a file in Ruby?

  There are three different methods to read a file.

  To return a single line, following syntax is used.

  Syntax:

  f.gets  
  code...  

  To return the whole file after the current position, following syntax is used.

  Syntax:

  f.rea  
  code...  

  To return file as an array of lines, following syntax is used.

  Syntax:

  f.readlines  
  [code...]  

===============================================================================================================================================

49) What is sysread method in Ruby?
  
  The sysread method is also used to read the content of a file. With the help of this method you can open a file in any mode.

===============================================================================================================================================

50) How will you rename and delete a file in Ruby?

  Ruby files are renamed using rename method and deleted using delete mehtod.

  To rename a file, following syntax is used.

  Syntax:

  File.rename("olderName.txt", "newName.txt")  
  To delete a file, following syntax is used.

  Syntax:

  File.delete("filename.txt")  

===============================================================================================================================================

51) How to check whether a directory exist or not in Ruby?

  To check whether a directory exists or not exists? Method is used.

  Syntax:

  puts Dir.exists? "dirName" 

===============================================================================================================================================

52) Explain Ruby exceptions.

  Ruby exception is an object, an instance of the class Exception or descendent of that class.
  When something goes wrong, Ruby program throws an exceptional behavior.
  By default Ruby program terminates on throwing an exception.

===============================================================================================================================================

53) What are some built-in Ruby class exceptions.

  Built-in subclasses of exception are as follows:

  NoMemoryError
 
  ScriptError

  SecurityError

  SignalException

===============================================================================================================================================

54) How an exception is handled in Ruby?

  To handle exception, the code that raises exception is enclosed within begin-end block.
  Using rescue clauses we can state type of exceptions we want to handle.

===============================================================================================================================================

55) Explain the use of retry statement in Ruby?

  Usaually in a rescue clause, the exception is captured and code resumes after begin block.
  Using retry statement, the rescue block code can be resumed from begin after capturing an exception.

  Syntax:

  begin  
  code....  
  rescue  
  # capture exceptions  
  retry # program will run from the begin block  
  end  

===============================================================================================================================================
56) Explain raise statement in Ruby?

  The raise statement is used to raise an exception.

  Syntax:

  raise  

  Or,

  raise "Error Message"  

  Or,

  raise ExceptionType, "Error Message"  

  Or,

  raise ExceptionType, "Error Message" condition 

===============================================================================================================================================

57) Explain the use of ensure statement in Ruby?

  There is an ensure clause which guarantees some processing at the end of code. The ensure block always
  run whether an exception is raised or not. It is placed after last rescue clause and will always executed as the block terminates.

  The ensure block will run at any case whether an exception arises, exception is rescued or code is terminated by uncaught exception.

  Syntax:

  begin  
  code..  
  #..raise exception  
  rescue  
  #.. exception is rescued  
  ensure  
  #.. This code will always execute.  
 end  

===============================================================================================================================================


