class Foobar
	def self.baz(array)
		return array.map{|e| (e.to_i + 2)}.reject {|e| e.odd?}.uniq.delete_if {|e| e > 10}.sum
	end
end