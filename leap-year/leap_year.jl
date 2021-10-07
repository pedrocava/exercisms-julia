"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year)

    return (@show year % 4 == 0) & (@show ~( year % 100 == 0) | (@show year % 400 == 0) )
        
end

