# learning-ruby
just learning ruby :)

+ x01 - Base
+ x02 - Class, Method
+ x03 - Array, Hashes
+ x04 - Deep class
+ x05 - Test

## Table of contents

## Basic Things
- [Operators](#operators)
- [Prev-Next](#prev-next)
- [Reverse](#reverse)
- [Length](#length)
- [join](#join)

## Controls flow
- [operators](#flow-operators)
- [If then end](#if-then-end)
- [case esac](#case-esac)
- [input with gets](#input-gets)
- [Unless](#unless)

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

## Functions
- [********asterix parameters](#asterix-parameters)
- [function default or optional](#function-default-or-optional)
- [yield](#yield)

## Class
- [definition](#class-definition)
- [class variable](#class-variable)

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

### 2 dimensions
To store a hashes in a hashe:

    our_heroes[:gods_greek] = { :chaos => 'Erebus', :beauty => 'Aphrodite', :war => 'Ares' }

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
