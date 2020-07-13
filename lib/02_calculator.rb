def add(a, b)
    return (a + b)
end

def subtract (a , b)
    return ( a - b )
end

def sum (nombres)
    # sum : https://apidock.com/rails/Enumerable/sum
    # It can calculate the sum without the use of a block
    # Ex : [5, 15, 10].sum # => 30
    return nombres.sum
end

def multiply ( a , b)
    return ( a * b )
end

def power ( a , b)
    return ( a ** b )
end

def factorial ( n )
    # reduce : https://apidock.com/ruby/Enumerable/reduce
    # Combines all elements of enum by applying a binary operation,
    # specified by a symbol that names an operator => here "multiply :*"
    # Add || 1 to handle the zero case.
    # memo : first value here 1 => memo = memo * next value ... to the last value n (params of method)
    return ((1..n).reduce(:*)|| 1)
end