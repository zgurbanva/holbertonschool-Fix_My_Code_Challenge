###
#
#  Sort integer arguments (ascending)
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/
    # convert to integer
    i_arg = arg.to_i
    # insert result at the right position
    result << i_arg
end

n = result.length
loop do
    swapped = false

    (n-1).times do |i|
        if result[i] > result[i+1]   # <-- BURA
            result[i], result[i+1] = result[i+1], result[i]
            swapped = true
        end
    end

    break if not swapped
end

puts result
