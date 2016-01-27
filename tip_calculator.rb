tip_calculator.rb

def get_info
	puts "Welcome to the tip calculator!"
	print "What is your bill total? $ xx.xx\n $"
	total = gets.chomp.to_f.abs
	puts "How much would you like to tip? xx%"
	tip_percent = gets.chomp.to_f.abs
	puts "Party size? x number of people"
	size = gets.chomp.to_i.abs
	until size > 0
		puts "Please enter a number greater than 0"
		size = gets.chomp.to_i
	end
	[total, tip_percent, size]
end

def tip_ammount(tip_percent, total)
	total * (tip_percent / 100)
end

def total_bill(total, tip)
	total + tip
end

def split_bill(total, size)
	total / size
end

def tip_calculator
	numbers = get_info
	total = numbers[0]
	tip_percent = numbers[1]
	size = numbers[2]

	tip = tip_ammount(tip_percent, total)
	total_bill = total_bill(total, tip)
	total_split = split_bill(total_bill, size)
	total_split = "%.2f" % total_split
	total_bill = "%.2f" % total_bill

	p total
	p total_split


	# use modulo for weird recursives

	puts """
	_____________________________________
	|
	|           Your Bill:
	|
	| Total       $#{total}
	| Tip         $#{tip} (#{tip_percent}% tip)
	| Total + Tip $#{total_bill}
	|	Party size  #{size}
	| Split total #{total_split}
	|
	|        Have a great day!
	|
	|————————————————————————————————————
	"""

end

# total = "%.2f" % total

tip_calculator
