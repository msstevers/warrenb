def warrenb(days)
	
	buy, sell, profit, i = 0, 0, 0, 0

	while i < days.length

		next_day = i + 1
			while next_day < days.length
				if days[next_day] - days[i] > profit
					buy, sell = i, next_day
					profit = buy - sell
				end
				next_day += 1
			end
			i += 1
		end

		total_profit = days[sell] - days[buy]

		puts "The buy day is #{buy} \n The sell day is #{sell} \n The total profit is $#{total_profit}"
	end
	
	puts warrenb([23,6,9,12,30,9,7,2,13])	