def bubble_sort(number_array, verbose=false)

	num_a = 0
	num_b = 1
	cycle_through_array = 1
	changes = 0

	while cycle_through_array < ( number_array.length - 1)
		while num_b < number_array.length		
			if number_array.fetch(num_a) > number_array.fetch(num_b)
				number_array.insert(num_b,number_array.delete_at(num_a))
				changes += 1
			end

			if verbose == true
				puts "#{number_array} - #{num_a} - #{num_b} - #{changes}"
			end

			num_a += 1
			num_b += 1
		end

		changes = 0
		num_a = 0
		num_b = 1
		cycle_through_array += 1
	end

	if verbose == false
		puts "#{number_array}"
	end
end

bubble_sort([4,2,6,8,4,2,1,9,5], true)
puts ""
bubble_sort([5,9,12,1,4,6,3,2,0,2,6,3,1])