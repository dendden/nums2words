def num2words num
    if ( num < 0 || num > 100 )
        return 'Please enter number between 0 and 100'
    end

    numString = ''
    if num == 100
        numString = 'One hundred'
    else
        write = num / 10
        left = num % 10
        tensString = ''
        onesString = ''
        if write == 0
            if left == 0
                numString = 'Zero'
            elsif left == 1
                numString = 'One'
            elsif left == 2 
                numString = 'Two'
            elsif left == 3
                numString = 'Three'
            elsif left == 4
                numString = 'Four'
            elsif left == 5
                numString = 'Five'
            elsif left == 6
                numString = 'Six'
            elsif left == 7
                numString = 'Seven'
            elsif left == 8
                numString = 'Eight'
            elsif left == 9
                numString = 'Nine'
            end
        elsif write == 1
            if left == 0
                numString = 'Ten'
            elsif left == 1
                numString = 'Eleven'
            elsif left == 2 
                numString = 'Twelve'
            elsif left == 3
                numString = 'Thirteen'
            elsif left == 4
                numString = 'Fourteen'
            elsif left == 5
                numString = 'Fifteen'
            elsif left == 6
                numString = 'Sixteen'
            elsif left == 7
                numString = 'Seventeen'
            elsif left == 8
                numString = 'Eighteen'
            elsif left == 9
                numString = 'Nineteen'
            end
        else
            if write == 2
                tensString = 'Twenty'
            elsif write == 3
                tensString = 'Thirty'
            elsif write == 4
                tensString = 'Fourty'
            elsif write == 5
                tensString = 'Fifty'
            elsif write == 6
                tensString = 'Sixty'
            elsif write == 7
                tensString = 'Seventy'
            elsif write == 8
                tensString = 'Eighty'
            elsif write == 9
                tensString = 'Ninety'
            end

            if left == 1
                onesString = 'one'
            elsif left == 2
                onesString = 'two'
            elsif left == 3
                onesString = 'three'
            elsif left == 4
                onesString = 'four'
            elsif left == 5
                onesString = 'five'
            elsif left == 6
                onesString = 'six'
            elsif left == 7
                onesString = 'seven'
            elsif left == 8
                onesString = 'eight'
            elsif left == 9
                onesString = 'nine'
            end

            numString = tensString + ' ' + onesString
        end
    end

    numString
end

puts 'This program convert numbers to their spoken forms. Enter "q" to quit.'
puts '**********************************************************************'
puts
puts 'Enter a number between 0 and 100:'
request = gets.chomp
while request != 'q'
    puts num2words request.to_i
    request = gets.chomp
end
