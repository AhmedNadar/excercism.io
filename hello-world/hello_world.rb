class HelloWorld
	def self.hello(*name)
		string= name[0].nil? ? "Hello, World!" : "Hello, #{name[0]}!"
		return string
	end

end