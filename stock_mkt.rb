def stock_market(days)

	day_start = 0
	day_end = days.length 
	largest_difference = 0

	days.each  do|day|
		
		(day_start...day_end).each do |check_day| 
			
			if days[check_day].to_i > day.to_i && (days[check_day].to_i - day.to_i) > largest_difference
				largest_difference = days[check_day].to_i - day.to_i
				@buy_and_sell_days = [days.index(day), days.index(days[check_day])]
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
