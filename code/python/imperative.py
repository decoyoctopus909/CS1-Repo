# Python
# Single-line comment starts with pound sign

''' Multiline comments surround by single triple quote marks'''

# Idris vs. Python
'''
(1) Idris is compiled; Python is interpreted (by default)
(2) Idris uses static type checking; Python uses dynamic type checking
(3) Idris values are immutable whereas Python has mutable state
(4) Idris is a language of expressions; Python is a language of commands
'''

# Static vs. Dynamic Type Checking
'''
In Idris, every value has a “static” type. This means that types are known and checked at compile time. One cannot compile a program with a type error in Idris. Therefore there is no need to check for “dynamic” type errors (i.e. when a program is actually running).

In Python, every value has two types:  a “static” type, as seen by the compiler, and a “dynamic” type, as seen when the program actually runs. The static type of every value in Python is simply “Object.” The upshot is that static type checking isn’t helpful in Python, and so it is not done. You can write, compile, and run code that passes a string to a function expecting a number, and you won’t know there’s an error until you run your program and it issues a runtime type error.
'''

# Type checking demo

def foo(n):
    return n + 3

print(foo(6))

# print is a "procedure" that affects the world by printing on console
print(print("Happy 200th Birthday, George Bool!"))

# None -- serves same purposes as both option.none and unit.mkUnit
print(None)

# Type returns the
print(type(None))
