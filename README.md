# learning-ruby
Just learning ruby, and save what i learn here.

## Table of contents

## Basic Things
- [Display Text](#display-text)
- [Operators](#operators)
- [Prev-Next](#prev-next)
- [Reverse](#reverse)
- [Length](#length)
- [join](#join)
- [Numbers](#numbers)
- [Date](#date)
- [Random](#random)
- [Symbols](#symbols)

## Strings
- [Upcase-Downcase](#upcase-downcase)
- [Long Text](#long-text)
- [gsub](#gsub)
- [chomp](#chomp)

## Regex
- [regex](#regex)
- [match](#match)
- [scan](#scan)

## Controls flow
- [operators](#flow-operators)
- [If then end](#if-then-end)
- [case esac](#case-esac)
- [input with gets](#input-gets)
- [Unless](#unless)
- [Ternary](#ternary)

## Loop
- [while](#while)
- [until](#until)
- [for](#for)
- [range](#range)

## About Array
- [array](#array)
- [fist last](#fist-last)
- [empty](#empty)
- [shift pop insert](#shift-pop-insert)
- [push unshift](#push-unshift)

## About Hashes
- [Hashes](#hashes)
- [keys values](#keys-values)
- [has value](#has-value-has-key)
- [iterate a hashe](#iterate-a-hashe)
- [delete an element](#delete-hashe)
- [hashes within hashes](#hashes-within-hashes)

## Functions
- [********asterix parameters](#asterix-parameters)
- [function default or optional](#function-default-or-optional)
- [yield](#yield)
- [callback](#callback)

## Class
- [definition](#class-definition)
- [Struct](#struct)
- [class variable](#class-variable)
- [inherit](#inherit)
- [super](#super)
- [self](#self)
- [Nested class](#nested-class)

## Modular Code
- [modules](#modules)
- [constants](#constant)
- [extend](#extend)
- [class](#module-class)
- [from another file](#from-another-file)

## I/O
- [open](#open)
- [close](#close)
- [lines count](#lines-count)
- [delete](#delete-file)
- [CVS format](#cvs-format)
- [Erb template](#erb)

## Errors
- [rescue](#rescue)
- [raise](#raise)
- [catch throw](#catch---throw)

## Objects
- [lambda](#lambda)
- [Proc](#proc)

## System
- [uid](#uid)

## Writing Test
- [Minitest](#minitest)
- [RSpec](#rspec)

## Server
- [http](#http)

## Command Line
- [Interactive Menu](#interactive-menu)
- [with case](#with-case)
- [optparse](#optparse)
- [GLI](#GLI)

## Writing a Gem

## Document Code
- [RDoc](#rdoc)

## [References](#references)

## Basics

### Display Text
Display text with newline character:

    puts "Hello"

Without:

    print "Hello"

Like printf: (there are also %d (decimal) , %s (string) , %f (float) , %x (hexa))

    price = 4.44
    puts "$#{"%.2f." % price}" 
    #=> $4.44

Other example:

    price is: %10d % 123 #=> 123
    price is: %10.2f 123 #=> 123.00
    price is: %08x % 1234567 #=> 0012d687

### Prev Next

    >> 22.next 
    23
    >> 22.pred
    21

### Operators

    >> 100 + 17
    117
    >> 40 /20
    2
    >> "Hello!" * 3
    "Hello!Hello!Hello"

### Reverse

    >> "18".reverse
    "81"
    
### Length

    >> "Hello".length
    4

### join

    >> [1, 2, 3].join(' plus ')
    "1 plus 2 plus 3"

### numbers
Floating

    >> puts 10.0 / 3.0
    3.33333333333

Conversion number
`to_i` (integer)

    >> puts 5.7.to_i
    5

`to_f` (float)

    >> puts 5.to_f
    5.0

### date

    puts Time.now
    puts Time.now - 10
    puts Time.now + 86400

### random

    >> puts rand(100000)
    47877

### symbols
Ruby use a many symbols for shorterer the code, the both bellow have the same result:

    :x.class  # => Symbol
    "x".class # => String

Or with string:

    "abc".to_sym # => :abc
    :abc.to_s    # => "abc"

Initialize a variable in a shorter way:

    @first_name = '' unless @first_name # long version
    @first_name ||= '' # shorter

## Strings 

### upcase downcase

    >> puts "This is a test".upcase
    THIS IS A TEST

    >> puts "HELLO World".downcase
    hello world

### long-text
With `%q{ }` (single quoted)

    x = %q{
    This is the string
    And a second REALLY usefull line
    }

Or the variant `%Q{ }` (double quoted)

    %Q<The time is now \
    #{Time.now}>

To write very long text, prefer using `<<` followed by any word

    x = <<END_TEXT
    This is the string
    And a second REALLY usefull line
    END_TEXT
    => "This is the string\nAnd a second REALLY usefull line\n"

### chomp
`chomp` remove the newline character `(aka \n)` from a string.

    line.chomp.split(/,/)

## Regex
    
    puts "String contains no digits" unless "This is a test" =~ /[0-9]/

To filter a time

    puts /\d\d:\d\d (AM|PM)/ =~ '10:24 PM' # => 0

### match
To cut a text in a variable like in lua or other languages

    x = "This is a test".match(/(\w+) (\w+)/ (\w+) (\w+)/)
    => x[0] = This , x[1] = is , x[2] = a , x[3] = test

Capture string in several variables: (\s+) for space|tab|newline, (\w+) any digit|character|underscore

    re = %r{(?<first>\w+)\s+((?<middle>\w\.)\s+(?<last>\w+)}
    m = re.match("David A. Black")
    #=> #<MatchData "David A. Black" first:"David" middle:"A." last:"Black">

You have access to each field like with hashes

    m[:first]
    #=> David

### scan
The scan method goes from left to right though a string.
  
    "testing 1 2 3 testing 4 5 6".scan(/\d/)
    #=> ["1", "2", "3", "4", "5", "6"]

### gsub

    >> puts "This is a test".gsub('i', '')
    ths s a test

An exemple of function to filter HTML code:

    def html_escape(s)
      s.to_s.gsub(/&/, "&amp;").gsub(/\"/, "&quot;").
        gsub(/>/, "&gt;").gsub(/</, "&lt;")
    end

Example by removing unwanted characters

    def normalize(name)
      name.gsub!(/[^-a-z'.\s]/i, "")
    end
    normalize("123David!! Bl%a9ck")
    #=> David Black

You can replace a string by other too

    text.gsub!("rails", "Rails")
    text.gsub!(/\brails\b/, "Rails")
    
With a block

    text = "RUBY Java perl PYtHon"
    lang = /ruby|java|perl|python/i
    text.gsub!(lang) {|l| l.capitalize }
    #=> Ruby Java Perl Python

## Controls Flow

### flow operators

    if flow_rate < 50 || flow_rate > 50
      puts "Warning!"
    elsif flow_rate != 50
      flow_rate = 50
      puts "the flow_rate' been reset to #{flow_rate}"
    else
      puts "The flow_rate is #{flow_rate}."
    end

We have too: `<`, `<=`, `>`, `>=`, `==` and `!=` like any other language.

### if then end

    flowmatic_on = true
    water_available = true
    if flowmatic_on && water_available
      flow_rate = 50
    elsif !flowmatic_on
      puts "Flowmatic is off!"
    else
      puts "No water!"
    end

### case esac
Use a `case esac` to print a dog name depend of the language:  

    lang = "fr"

    dog = case lang
      when "en"
        "dog"
      when "es"
        "perro"
      when "fr"
        "chien"
      else
        "dog"
      end

    >> p dog

### unless
Rather than use the negation `!something`, use the keyword `unless`:

    unless nil
      puts "But i will get printed!"
    end

### ternary

    age = 10
    type = age < 18 ? "child" : "adult"
    puts "You are a " + type

### input gets
To capture a line:

    print "Where to? (N, E, S, W): "
    direction = gets.chomp

    puts "#{direction}, you say? A fine choice!"

To capture only one char:

    char = STDIN.getc
    hello
    puts char
    #=> h
    
### while

    while something_is_the_case
      # do something!
    end 

### until

    until !something_is_the_sace
      # do something!
    end

### for

    for task in todo_list
      puts task
    end

### ranges
To display by range

    >> ('a'..'f').to_a
    ["a", "b", "c", "d", "e", "f"]

Number:

    >> (1..9).to_a
    [1, 2, 3, 4, 5, 6, 7, 8, 9]

### Array

    grocery_list = ["cheese", "bread", "grapes", "a festive hat for all occasions"]
    grocery_list.each { |item| next if item.empty? }

Create an array:

    order_two = Array.new(3, 'sunny_side_up_egg')
    >> p order_two
    ["sunny_side_up_egg", "sunny_side_up_egg", "sunny_side_up_egg"]

Or shorcut with `%w( )` and single quoted, when need to use double quote (for variable) use `%W( )`.

    order_two = %w(sunny_side_up_egg sunny_side_up_egg sunny_side_up_egg)
    p order_two

Or even with a block:

    Array.new(3) { |i| 10 * (i + 1) }
    #=> [10, 20, 30]

### fist

    orders = %w(go pause sit)
    >> orders.first
    "go"

    >> orders.last
    "sit"

### empty

    >> order.empty
    false

### shift pop insert
shift remove the first element of an array

    >> orders.shift
    "go"
    >> p orders
    ["pause sit"]

pop remove the last elements

    >> orders.pop
    "sit"
    >> p orders
    ["pause"]

### push unshift 
push add a new element at the end

    >> orders.push("run")
    ["pause", "run"]

Or shortcut with `<<`

    >> orders << 'run'

insert add a new element at the given place (start at 0)

    >> orders.insert(1, 'observe')
    ["pause", "observe", "run"]

look an element

    >> p orders[1]
    "observe"

### Hashes
Defining a hash

    our_heroes = {
      :the_king => 'the ruler of the kingdom',
      :ruben => 'a Ruby wizard in training',
      :scarlet => 'a Ruby wizard in training too'
    }
    
Display one element

    p our_heroes[:the_king]
    'the ruler of the kingdom'

We can define a hash with the `Hash` keyword too:

    Hash["Connecticut", "CT", "Delaware", "DE"]
    #=> {"Connecticut"=>"CT", "Delaware"=>"DE"]

### keys values
use keys to show an array of keys

    >> our_heroes.keys
    [:the_king, :ruben, :scarlet]

and `values`:

    >> our_heroes.values
    ['the ruler of the kingdom', 'a ruby wizard', 'a ruby wizard too']

### has value - has key
To test if a value exist, use `has_value`

    >> our_heroes.has_value('the ruler of the kingdom')
    true

Or `has_key`

    >> our_heroes.has_key(:the_king)

### iterate a hashe

    our_heroes.each do |hero, role|
      puts "#{hero] is #{role}."
    end

### delete
To delete an element, just do it:

    >> our_heroes.delete(:ruben)

### hashes within hashes
To store a hashes in a hashe:

    people = {
      'fred' = {
        'name' => 'Fred Elliott',
        'age' => 63,
        'gender' => 'male',
        'favorite painters' => ['Monet', 'Constable', 'Da Vinci']
      },
      'janet' => {
        'name' => 'Janet S Porter',
        'age' => 55,
        'gender' => 'female'
      }
    }

    >> puts people['fred']['age']
    >> puts people['janet']['gender']
    >> puts people['janet']

## Functions

### asterix parameters
To declare many things with one arguments, use this:

    def declare_ninjas(*ninjas)
      puts ninjas
    end

    >> declare_ninja('Oda', 'Kirigajure')
    Oda
    Kirigajure

### function default or optional
Default parameter are defined like:

    def call_your_name(name="Bob")
      puts "your name is #{name}"
    end

    >> call_your_name("Snake")
    Your name is Snake

If call without argument, use the default `Bob`.  

### yield
The keyword `yield` execute arguments of a function if possible, for example:

    def block_party
      yield
    end

    >> block_party { puts "Hello from the block!' }
    Hello from the block!

Second example:

    def block_party_part_two(name)
      yield name
    end

    >> block_party_part_two('Haldo') { |name| puts "This is #{name}'s party!" }
    This is Haldo's party!
    
Last example with a logging function:

    class SomeApp
      with_logging('load') { @doc = Document.load( 'resume.txt' ) }
      with_logging('save') { @doc.save }

      def with_logging(description)
        begin
          @logger.debug( "Starting #{description}" )
          yield
          @logger.debug( "Completed #{description}" )
        rescue
          @logger.error( "#{description} failed !" )
          raise
        end
      end
    end
    
### Callback
Creating a callback is make by prefix an argument with `&block_name`, the block can be execute with his `call()` method `block_name.call()`

    class Document
      def on_save( &block )
        @save_listener = block
      end

      def on_load( &block )
        @load_listener = block
      end

      def load( path )
        @content = File.read( path )
        @load_listener.call( self, path ) if @load.listener
      end

      def save( path )
        File.open( path, 'w' ) { |f| f.print( @content ) }
        @save_listener.call( self, path ) if @save_listener
      end
    end

And this is can be used like this:

    my_doc = Document.new( 'Block Based Example', 'russ', '' )

    my_doc.on_load do |doc|
      puts "Hey, i've been loaded!"
    end

    my_doc.on_save do |doc|
      puts "Hey, i've been saved!"
    end

### class definition
To create a new class:

    class Minstrel
      def initialize(name)
        @name = name
      end

      def introduce
        puts "My name is #{@name}!"
      end

      def sing
        puts 'Tralala'
      end
    end

To use:

    >> wherefore = Minstrel.new('Wherefore')
    >> wherefoce.introduce
    My name is Wherefore!

Class can also be created dinamically

    Minstrel = Object.new
    def Minstrel.introduce(name)
      puts 'My name is #{name}
    end
    def Minstrel.sing
      puts 'Tralala'
    end

You may need to check if a function exist in this case with `respond_to?`:

    if Minstrel.respond_to?("sing")
      Minstrel.sing
    else
      puts "There are no method 'sing' available"
    end

### struct
There are another way to create class with the keyword `struct`, the example above can be rewrite like this:

    Minstrel = Struct.new(:name) do
      def introduce
        puts "My name is #{name}!"
      end
    end

    >> Minstrel.new('Wherefore').introduce
    My name is Wherefore!

### class variable
Class variable are prefix with two `@@`, a class variable can keep the track of how many ninjas instance we create.  

    class Ninja
      @@number_of_ninjas = 0

      def initialise
        @@number_of_ninjas += 1
      end

      def self.number_of_ninjas
        @@number_of_ninjas
      end
    end

## instance variables
Are created with only one prefix `@`, they contain new value for each instance of the class:

    class Weezard
      def initialize(name, power='Invisible')
        @name  name
        @power = power
        @spells = 5
      end
    end

### getters setters
setters without special method
Write a file called `minstrel.rb`:

    class Minstrel
      def initialize(name)
        @name = name
       end

       def name
         @name
       end

       def name=(new_name)
         @name = new_name
       end
     end

`irb`

    >> load "minstrel.rb"
    >> minstrel = Minstrel.new('wherefore')
    >> minstrel.name
    "whereforce"
    >> minstrel.name = "othername"
    >> minstrel.name
    "othername"
  
We can use `attr_writer` or `attr_accessor` like a shortcut for setter and getter.

    class Minstrel
      attr_accessor :name
      attr_reader :ballad

      def initialize(name)
        @name = name
        @ballad = "The Ballad of Chucky Jim"
      end
    end

    >> whereforce = Minstrel.new("whereforce")
    whereforce.name
    "whereforce"
    >> whereforce.name = "othername"
    >> whereforce.name
    "othername"

### inherit
For a main class `MySuperclass`

    class MySuperclass
      def say_hello
        puts 'Hello!'
      end
    end

Second class inherit:

    class MySubclass < MySuperclass
      def say_goodbye
        puts 'Goodbye!'
      end
    end

And usage:

    >> suby = MySubclass.new
    >> suby.say_hello
    Hello!

    >> suby.say_goodbye
    Goodbye!

### super
The `super` keyword is used to be able to use all variables from the main class, e.g:

    class Animal
      attr_accessor :name

      def initialize(name, legs=4)
        @name = name
        @legs = legs
      end
    end

    class Dog < Animal
      def initialize(name)
        puts 'just made a new dog!'
        super
      end
    end

    >> dog = Dog.new('Bigelow')
    Just made a new dog!
    => #<Dog:0x... @name="Bigelow", @legs=4>

### Self

    class C
      def C.x
        puts "Class method of class C"
        puts "self: #{self}
      end
    end
    #=> Class method of class C
    #=> self: C

Can be rewrite like this:

    class C
      def self.x
        puts "Class method of class C"
        puts "self: #{self}
      end
    end

Or even, if you're define multiple class method:

    class C
      class << self
        def x
          # block x
        end
        def y
          # block y
        end
      end
    end

### nested class
A nested class is a class in another class:

    class Drawing
      def self.give_a_circle
        Circle.new
      end

      class Circle
        def what_am_i
          "This is a circle"
        end
      end
    end

    >> a = Drawing.give_a_cicle
    >> puts a.what_am_i
    This is a cirle

    >> a = Drawing::Circle.new
    >> puts a.what_am_i
    This is a circle

## Modular codes

### modules

    module Colorize
     def color
       [:red, :blue, :green, :yellow].sample
     end
    end

We can include a module in a class like this:

    class Paint
      include Colorize
    end

    >> paint = Paint.new
    >> paint.color
    => :green

Module can serve to store programs variable too, ex:

    module Rendering
      DEFAULT_FONT = Font.new( 'default' )
      DEFAULT_PAPER_SIZE = PaperSize.new
    end

Access directly without `include`:

    Rendering::DEFAULT_PAPER_SIZE

With code error:

    module ErrorCode
      OK = 0
      ERROR = 1
      INTERNAL = 2
    end

    class SomeSQLiteApps
      include ErrorCode

      def print_status_message( status )
        if status == ERROR
          puts "It failed"
        elsif status == OK
          puts "it worked"
        else
          puts "status was #{status}"
        end
      end
    end

### constants
Constant are variables with a value who don't change once you set them.  

     >> RUBY = 'Wonderfull'
     "Wonderfull"

     >> RUBY = 'Stupendous'
     (irb):2: warning: alrealy initialized constant RUBY

A recommended practice is to set them in CAPS !

    module Strongbox
      GOLD = 10
    end

To access to the variable, use this:

    >> Strongbox::GOLD
    10

### extend
If you need modifying `variable` or `function` from a module, you have to use `extend` rather than `include`.  

    class Paint
      extend Colorize
    end

### module class

    module ToolBox
      class Ruler
        attr_accessor :length
      end
    end

    module Country
      class Ruler
        attr_accessor :name
      end
    end

    >> a = ToolBox::Ruler.new
    a.length = 50
    >> b = Country::Ruler.new
    b.name  "Genghis Khan of Moskau"

### from another file

    require './colorize'

    class PandaFood < Food
      include Colorize
      
      attr_reader :calories

      CALORIES_PER_SERVING = 1000

      def initialize
        @calories = CALORIES_PER_SERVING
      end
    end

    >> hogarths_food = PandaFood.new
    >> hogarths_food.calories
    1000
    >> hogarths_food.color
    :yellow

## I/O

### open
There are 2 methods, `File.read` return the whole file

    file.read("/etc/tor/torrc")
    #=> "User tor\nPIDFile /run/tor/tor.pid\nData...\n"

And `File.readlines` return an array with all lines

    File.readlines("/etc/tor/torrc")
    #=> ["User tor\n", "PIDFile /run/tor/tor.pid\n", "Data...\n"]

One line way

    File.open('lunch.txt').each { |line| puts line }

Another example to search a value in a config file for Linux, if we search the value of `TransPort XXXX` in the `/etc/tor/torrc`:

    opt = 0
    File.open("/etc/tor/torrc") do |f|
      f.inject(0) do |total,line|
        field = line.split('\n')
        if field[0] =~ /^TransPort/
          tmp = field.to_s
          opt = tmp.match(/\d+/)
        end
      end
    end
    puts opt
    #=> 9040

Or yet shorter:

    File.open("/etc/tor/torrc") do |f|
      file.each do |line|
        puts $~[1] if line.match(/transport ([0-9]*)/i)
      end
    end
    #=> 9040

### close
Always thing to close a file, we can write a class like this:

    class MyFile
      attr_reader :handle

      def initialize(filename)
        @handle = File.new(filename, "r")
      end

      def show_content
        @handle.each { |line| puts line }
      end

      def finished
        @handle.close
      end
    end

    >> f = MyFile.new('lunch.txt')
    >> f.show_content
    >> f.finished

### write
`a+` create the file if not exist, else use only `w+` to write:

    file = File.open('lunch.txt', 'a+')
    file.write('THE MELTIEST OF GRILLED CHEESES')
    file.puts('ONE KAT-MAN-BLEU BURGER, PLEASE')
    file.rewind   
    file.readlines
    => ["THE MELTIEST OF GRILLED CHEESES\n", "ONE KAT-MAN-BLEU BURGER, PLEASE"]
    file.close

`file.rewind` serve to back at the beginning of the file.

### delete file

    File.delete("file1.txt")

### avoid error

    File.exist? 'lunch.txt'
    => true

    File.empty? 'XXX'
    File.symlink? 'XXX'
    File.readable? 'XXX'
    File.zero? 'XXX'

### count lines

    line_count = 0
    File.open('lunch.txt').each { |line| line_count += 1 }
    p "There are #{line_count} entry"

Or with `readlines`

    lines = File.readlines('lunch.txt')
    line_count = lines.size

## Dir

### Change directory

    >> Dir.chdir("/tmp")
    >> puts Dir.pwd
    /tmp

### glob
With a linux shell, you make for example:
 
    ls *.png

With Ruby:

    Dir.glob("*.png")

Or even

    Dir["*.png"].each {|f| puts f }

# Different File Formats
### YAML
### PStore
### SQLite
### CVS
A `CVS` format look like this, a simple file text where each fields are separate by a `,`:

    $ cat people.txt
    Fred Bloggs,Manager,Male,45
    Laura Smith,Cook,Female,22
    Debbie Watts,Professor,Female,38

To use the file in ruby, we use the `require 'cvs'`:

    require 'cvs'
    CVS.open('people.txt').each do |person|
      p person
    end

    # => ["Fred Blogg", "Manager", "Male", "45"]
    # => ["Laura Smith", "Cook", "Female", "22"]
    # => ["Debbie Watts", "Professor", "Female", "38"]

Or even this version:

    require 'cvs'
    people = CVS.parse(File.read("people.txt"))
    puts people[0][0] # => Fred Blogg
    puts people[0][1] # => Laura Smith
    puts people[0][1] # => Debbie Watts

### erb
We can create template with `erb`:

    require 'erb'
    person = 'Matz!'
    temp = ERB.new( "Hello, <%= person %>" )
    puts temp.result( binding ) #=> Hello, Matz!

## Errors

### rescue
Return simple message error with `rescue`

    print "Enter a number: "
    n = gets.to_i
    begin
      result = 100 / n
    rescue
      puts "Number didn't work. Was it zero???"
      exit
    end
    puts "100/#{n} is #{result}."

### raise
To raise an error if a class is call without the expected argument.

    class BadDataException < RuntimeError
    end

    class Person 
      def initialize(name)
        raise BadDataException, "No name present" if name.empty?
      end
    end

Or on argument error

    def fussy_method(x)
      raise ArgumentError, "I need a number under 10" unless x < 10
    end
    fussy_method(20)

We can write the above example like this too:

    begin
      fussy_method(20)
    rescue ArgumentError
      puts "I need a number under 10"
    end

### catch - throw

    catch(:finish) do
      1000.times do
        x = rand(1000)
        throw :finish if x = 123
      end
      puts "Generated 1000 random numbers without generating 123!"
    end

## Objects

### proc

    pr = Proc.new { puts "Inside a Proc's block }
    pr.call
    #=> Inside a Proc's block

### lambda
With a short constructor `->`

    lam = -> { puts "hi" }
    lam.call
    #=> hi

Or with args:

    mult = ->(x,y) { x * y }
    mult.call(3,4)
    #=> 12

### Instance Eval
Example usage of `instance_eval` to create object:

    joe = Person.new do
      name "Joe"
      age 37
    end

The class Person look like this:

    class Person
      def initialize(&block)
        instance_eval(&block)
      end
      def name(name=nil)
        @name ||= name
      end
      def age(age=nil)
        @age ||= age
      end
    end

## System

### uid
For search actual uid, rather than use `id -u`, you can use the native solution:

    sys = Process::Sys
    puts "UID=#{sys.getuid}, GID=#{sys.getgid}"
    #=> UID=1000, GID=1000

### Permission

    File.chmod(0644, "my_file")

## Writing Test

### minitest
Ruby come with the default unit test `minitest`, a reimplementation of `Test::Unit`.

    class String
      def titleize
        self.gsub(/(\A|\s)\w/) { |letter| letter.upcase }
      end
    end

    require 'minitest/autorun'

    class TestTitleize << Minitest::Test
      def test_basic
        assert_equal("This Is A Test", "this is a test".titleize)
        assert_equal("Another Test 1234", "another test 1234".titleize)
        assert_equal("We're Testing", "we're testing".titleize)
      end
    end

## Server

### http
You can create a basic html file called `index.html`:

    <html>
      <head>
        <title>Welcome</title>
      </head>
      <body>
        <h1>Welcome !</h1>
        <p>Hello World</p>
      </body>
    </html>

And the code for the server `http.rb`:

    require 'webrick'

    server = WEBrick::HTTPServer.new( :Port => 9000, :DocumentRoot => Dir::pwd + "/" )

    class MyServlet < WEBrick::HTTPServlet::AbstractServlet
      def do_GET(req, response)
        response.body = File.open('./index.html', 'r')
        response['Content-Type'] = "text/html"
      end
    end

    server.mount("/", MyServlet)
    trap("INT"){ server.shutdown }
    server.start

    $ ruby http.rb

## Command Line

### Delete files interactively

    Dir["/tmp/*"].each do |f|
      next unless File.exist?(f)
      print "Delete #{f}?"
      answer = $stdin.gets
      case answer
      when /^y/
        File.unlink(f)
      when /^q/
        break
      end
    end

### Interactive Menu
An example of interactive menu for a terminal app:

    loop do
      puts %q{Please select an option:

        1. Create people table
        2. Add a person
        3. Look for a person
        4. Quit}

     case gets.chomp
       when '1'
         create_table
       when '2'
         add_person
       when '3'
         find_person
       when '4'
         disconnect_and_quit
      end
    end

### with case
Get the first argument to do something:

    command = ARGV.shift
    when 'new'
      make_new
    when 'delete'
      make_delete
    when 'update'
      make_update
    end

### optparse
You can use `optparse` with regex too:

    require 'optparse'
    options = {}

    option_parser = OptionParser.new do |opts|
      opts.on("-i", "--iteration") do
        options[:iteration] = true
      end

      opts.on("-u USER") do |user|
        unless user =~ /^.+\..+$/
          raise ArgumentError, "USER must be in 'first.last' format"
        end
        options[:user] = user
      end

      opts.on("-p PASSWORD") do |password|
        unless password.length < 8
          raise ArgumentError, "PASSWORD should have 8 or more character"
        end
        options[:password] = password
      end
    end

    option_parser.parse!
    puts options.inspect

### GLI

## Writing a Gem
Initialize your project with bundler:

    $ bundler gem my_project_name

+ `lib` should contain all the code related to the library.
+ `pkg` is a temporary directory to build your gem.
+ `test` contain all tests.
+ `doc` contain all docs.
+ `bin` contain all executables.
+ `ext` source code for extensions (e.g: c, sh)

### gemspec
The gemspec above look like this:
```rb
Gem::Specification.new do |s|
  s.name = 'my_project_name'
  s.version = '0.0.1'
  s.summary = 'Cool code about cool lib for do cool things...'
  s.platform = Gem::Platform::RUBY
  s.files = Dir.glob("**/**/**")
  s.test_files = Dir.glob("test/test_*.rb")
  s.author = "szorfein"
  s.email = "szorfein@protonmail.com"
  s.has_rdoc = false
  s.required_ruby_version = '>= 2.5.0'
  s.licenses = "MIT"
end
```
Check the reference if need: http://guides.rubygems.org/specification-reference/

## Running test
For running all the test, we can use `rake`:

    $ rake test

## Build the gem
For keep secure, you may need to create a self signed certificate to ensure your identity [ref](https://guides.rubygems.org/security/).

    $ chmod 755 bin/my_project_name
    $ gem build my_project_name.gemspec

This make a gem called `my_project_name-1.0.0.gem`.

### Install your gem

    $ gem install my_project_name-0.0.1.gem
    $ gem list my_project_name -d
    ...
    Installed at: /home/user/.gem/ruby/2.X.0/bin

You can use the gem by adding the path to your PATH environment.

### Push the gem
Sending the gem at `http://rubygems.org` is a simple task too:

    $ gem push my_project_name-1.0.0.gem

## Document Code

### RDoc
RDoc syntax look like the markdown. A little example of a documented class:

```ruby
# This is my class, allows you to do great things !
# Usage:
#   include Foo
#
# Author:: John Smith (mailto:johnsmith@example.com)
# Copyright:: MIT
#
# :title:Foo
class Foo
  # === Parameters
  # * _debt_ = long-term debt
  # * _equity_ = equity 
  # === Example
  # ratios = Ratios.new( 2703, 9876 )
  def initialize( debt, equity )
    @debt = debt
    @equity = equity
  end
  # Method Foo#bar, you can write
  # __italic__
  # or *bold*
  # for code sample, use +super code+
  # Method bar display a string
  # === Example
  # Ratio.bar
  def bar
  end
end
```
When you finish of documenting your code, launch in your project a:

    rdoc

It will create a new directory `doc`, you can look the doc with:
 
    ri Foo#bar

## References
### Books
- [Ruby Wizardry]() by Eric Weinstein
- [Beginning Ruby]() by Peter Cooper
- [The Book of Ruby]() by Huw Collingbourne
- [Eloquent Ruby]() by Russ Olsen
- [Ruby Phrasebook]() by Jason Clinton 

### Links
- [writing a gemspec](https://piotrmurach.com/articles/writing-a-ruby-gem-specification/)
