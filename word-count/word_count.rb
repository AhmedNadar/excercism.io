require 'set'
class Phrase
	VERSION = 1
	attr_accessor :sentence
	def initialize(sentence)
		@sentence = sentence
	end
	def word_count
		hash ={ }
		words = self.sentence.gsub(" '"," ").gsub("' "," ").gsub(/[,]/," ").gsub(/[^0-9 A-Z a-z \n']/,"").downcase.split(" ")
		unique_words = words.to_set
		unique_words.each do |word|
			hash[word]=0
			words.each do |compword|
				if word.eql?(compword)
					hash[word]+=1
				end
			end
		end
		return hash
	end
end

