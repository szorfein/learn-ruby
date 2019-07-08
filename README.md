# learning-ruby
just learning ruby :)

+ x01 - Base
+ x02 - Class, Method
+ x03 - Array, Hashes
+ x04 - Deep class
+ x05 - Test

## Table of contents
## Statements
- [If then end](#if-then-end)
- [case esac](#case-esac)

## Functions
- [********asterix parameters](#asterix-paramters)
- [function default or optional](#function-default-or-optional)
- [yield](#yield)

### if then end

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

### asterix parameters
To declare many things with one arguments, use this:

    def declare_ninjas(*ninjas)
      puts ninjas
    end

    >> declare_ninja('')

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
    
