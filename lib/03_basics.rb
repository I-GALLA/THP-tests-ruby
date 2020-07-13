def who_is_bigger(a, b, c)
    if
        #si a ou b ou c == nil ==> "nil detected"
        a == nil || b == nil || c == nil
        "nil detected"
    else
        if (a>b) && (a>c)
            return "a is bigger"
        elsif
            (b>a) && (b>c)
            return "b is bigger"
        else
            (c>a) && (c>b)
            return "c is bigger"
        end
    end
end

def reverse_upcase_noLTA (bla)
    # Reverse (inverser), upcase(MAJ) then removes all(suppr) L, T and A
    # str.upcase : Return a uppercase copy of str # "string" => "STRING" 
    # str.reverse : Return a new string with the characters from str in reverse order # "abcd" => "dcba" 
    # str.delete(str2) : Return a copy of str with all characters of str2 deleted 
    bla.reverse.upcase.delete "A|L|T"
end

def array_42(array)
    # array_42 takes an array as parameter and returns:
    # - true if there's a 42 in the array items
    # - false otherwise
    # include? : https://apidock.com/ruby/Array/include%3F
    return array.include?(42)
end

def magic_array(array)
    # The magic_array function takes an array of number or an array of
    # array of number as parameter and return the same array :

    # - flattened (i.e. no more arrays in array) - https://apidock.com/ruby/Array/flatten
    # Ex : [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10].flatten => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    # - sorted - https://apidock.com/ruby/Array/sort
    # Ex : [ "d", "a", "e", "c", "b" ].sort => ["a", "b", "c", "d", "e"]

    # - with each number multiplicated by 2
    # map : https://www.rubyguides.com/2018/10/ruby-map-method/
    # Ex : ["a", "b", "c"].map { |string| string.upcase } => ["A", "B", "C"]

    # - with each multiple of 3 removed
    # reject - https://apidock.com/ruby/Array/reject
    # Ex : Remove even numbers -- (1..30).reject { |n| n % 2 == 0 } => [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29]

    # - with each number duplicate removed (any number should appear only once)
    # - uniq - https://apidock.com/ruby/Array/uniq
    # Ex : [ "a", "a", "b", "b", "c" ].uniq  => ["a", "b", "c"]

    # - sorted
    # BONUS : You can do this in one line less than 55 chars
    return array.flatten.sort.map{|x| x*2}.reject{|x| x % 3 == 0}.uniq.sort
end 