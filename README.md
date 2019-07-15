# learning-ruby
just learning ruby :)

## Table of contents

## Basic Things
- [Operators](#operators)
- [Prev-Next](#prev-next)
- [Reverse](#reverse)
- [Length](#length)
- [join](#join)
- [Numbers](#numbers)
- [Date](#date)
- [Random](#random)

## Strings
- [Upcase-Downcase](#upcase-downcase)
- [Long Text](#long-text)
- [gsub](#gsub)
- [regex](#regex)

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

## Class
- [definition](#class-definition)
- [Struct](#struct)
- [class variable](#class-variable)
- [inherit](#inherit)
- [super](#super)
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

## Errors
- [raise](#raise)
- [handle](#handle)

## Server
- [http](#http)

## [References](#references)
---

## Basics

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

## Strings 

### upcase downcase

    >> puts "This is a test".upcase
    THIS IS A TEST

    >> puts "HELLO World".downcase
    hello world

### long-text
To write long text, use `<<` followed by any word

    x = <<END_TEXT
    This is the string
    And a second REALLY usefull line
    END_TEXT
    => "This is the string\nAnd a second REALLY usefull line\n"

Or with `%q{ }`

    x = %q{
    This is the string
    And a second REALLY usefull line
    }

### gsub

    >> puts "This is a test".gsub('i', '')
    ths s a test

### regex
    
    puts "String contains no digits" unless "This is a test" =~ /[0-9]/

To cut a text in a variable like in lua or other languages

    x = "This is a test".match(/(\w+) (\w+)/ (\w+) (\w+)/)
    => x[0] = This , x[1] = is , x[2] = a , x[3] = test

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

    print "Where to? (N, E, S, W): "
    direction = gets.chomp

    puts "#{direction}, you say? A fine choice!"

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

Or shorcut with `%w( )`

    order_two = %w(sunny_side_up_egg sunny_side_up_egg sunny_side_up_egg)
    p order_two

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

    our_heroes = {
      :the_king => 'the ruler of the kingdom',
      :ruben => 'a Ruby wizard in training',
      :scarlet => 'a Ruby wizard in training too'
    }
    
Display one element

    p our_heroes[:the_king]
    'the ruler of the kingdom'

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
    
### class definition

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
  
With the special method `attr_accessor`.

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

    file = File.open('lunch.txt', 'r')
    file.read
    "One KAT-MAN-BLUE BURGER, PLEASE\n"


One line way

    File.open('lunch.txt', 'r') { |file| file.read }
    "One KAT-MAN-BLUE BURGER, PLEASE\n"

Or:

    File.open('lunch.txt').each { |line| puts line }

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

### Change directory

    >> Dir.chdir("/tmp")
    >> puts Dir.pwd
    /tmp

### avoid error

    File.exist? 'lunch.txt'
    => true

### count lines

    line_count = 0
    File.open('lunch.txt').each { |line| line_count += 1 }
    p "There are #{line_count} entry"

Or with `readlines`

    lines = File.readlines('lunch.txt')
    line_count = lines.size

## Errors

### raise
To raise an error if a class is create without argument.

    class BadDataException < RuntimeError
    end

    class Person 
      def initialize(name)
        raise BadDataException, "No name present" if name.empty?
      end
    end

### handle

    begin 
      puts 10 / 0
    rescue
      puts "You caused an error!"
    end

### catch - throw

    catch(:finish) do
      1000.times do
        x = rand(1000)
        throw :finish if x = 123
      end
      puts "Generated 1000 random numbers without generating 123!"
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

## References
- [Ruby Wizardry]() from Eric Weinstein
- [The Book of Ruby]() from Huw Collingbourne
- [Beginning Ruby]() from Peter Cooper
