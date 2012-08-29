#! /usr/bin/env ruby

def ack(m, n)
	case true
	when m == 0
		return n + 1
	when n == 0
		return ack(m - 1, 1)
	else
		return ack(m - 1, ack(m, n - 1))
	end
end

if __FILE__ == $0 then
	# puts "A(2, 2) = #{ack(2, 2)}"
	puts "A(4, 1) = #{ack(4, 1)}"
end

