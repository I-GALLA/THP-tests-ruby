def echo(str)
    return str
end
   
def shout(str)
    return str.upcase  
end
   
def repeat(str, nb = 2)
    #nb = 2 : if a value for the argument isn’t supplied, the default value will be used instead
    #join : https://apidock.com/ruby/Array/join
    #Ex : [ "a", "b", "c" ].join("-")   #=> "a-b-c"
    #[str] * nb - Ex: [ 1, 2, 3 ] * 3    #=> [ 1, 2, 3, 1, 2, 3, 1, 2, 3 ]
    return ([str] * nb).join(" ")
end
   
def start_of_word(str,nb)
    # https://ruby-doc.org/core-2.6/String.html
    # Ex : a = "hello there" -- a[7..-2] => "her"
    return str[0..nb-1]
end
   
def first_word(str)
    # https://ruby-doc.org/core-2.6/String.html
    # split : Divides str into substrings based on a delimiter, returning an array of these substrings.
    #" now's  the time ".split  #=> ["now's", "the", "time"]
    # first : https://apidock.com/ruby/Array/first
    # Ex:  [ "q", "r", "s", "t" ].first => "q"
    return str.split.first
end
   
def titleize(str)
    str.capitalize.split.map{|x| x.size >= 4 ? x.capitalize : x}.join(" ")
end