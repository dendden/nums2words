def num2words num
    if num < 0
        return 'Please provide a non-negative number:'
    end
    if num == 0
        return 'zero'
    end

    numString = ''
    onesPlace = ['one','two','three','four','five','six','seven','eight','nine']
    tensPlace = ['ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']
    teens = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

    left = num
    write = left / 100
    left = left % 100

    if write > 0
        hundreds = num2words write
        numString += hundreds + ' hundred'

        if left > 0
            numString += ' '
        end
    end

    write = left / 10
    left = left % 10

    if write > 0
        if ( write == 1 && left > 0 )
            numString += teens[left-1]
            left = 0
        else
            numString += tensPlace[write-1]
        end
    end

    if left > 0
        if numString != ''
            numString += ' '
        end
    end

    write = left
    left = 0
    if write > 0
        numString += onesPlace[write-1]
    end

    numString
end

puts 'This program convert numbers to their spoken forms. Enter "q" to quit.'
puts '**********************************************************************'
puts
puts 'Enter a number:'
request = gets.chomp
while request != 'q'
    puts num2words request.to_i
    request = gets.chomp
end
