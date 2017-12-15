def stock_market(days)

	pos_in_array = 0
	day_start = 0
	day_end = days.length - 1
	largest_difference = 0

	days.each  do|day|

		day = day.to_i

		(day_start..day_end).each do |check_day| 
			if days[check_day].to_i > day && (days[check_day].to_i - day) > largest_difference
				largest_difference = days[check_day].to_i - day
				@buy_and_sell_days = [day, days[check_day].to_i]
			else
				next
			end

		end
	day_start += 1
	end

puts "[#{@buy_and_sell_days.join(',')}]"
	
end

stocks = [7,13,2,5,10,3,15,9,2,10]
	
stock_market(stocks)

puts "\n" + stocks.join(",")