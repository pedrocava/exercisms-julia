"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)

    all(x -> x in lowercase(input), 'a':'z')

end
