#!/usr/bin/env ruby

class EnglishNumber 
	attr_reader :numberToConvert

	# define hash
	def number_words  
	@number_words = {
	    90 => "ninety",   80 => "eighty",   70 => "seventy",
	    60 => "sixty",    50 => "fifty",    40 => "forty",
	    30 => "thirty",   20 => "twenty",   19 => "nineteen",
	    18 => "eighteen", 17 => "seventeen",16 => "sixteen",
	    15 => "fifteen",  14 => "fourteen", 13 => "thirteen",
	    12 => "twelve",   11 => "eleven",   10 => "ten",
	    9  => "nine",     8  => "eight",    7  => "seven",
	    6  => "six",      5  => "five",     4  => "four",
	    3  => "three",    2  => "two",      1  => "one",
	}
	end 

	def initialize(inputNum)
		@numberToConvert = inputNum
	end

	# public method: in_english. Validate the number and call in_words private function
	def in_english()
		str = ""
		#Allow numbers between -99 to 99
		if numberToConvert >=-99 && numberToConvert <= 99
			#if negative then add minus string 
			if numberToConvert < 0
	  			str = str + "minus "
	  		end

			str = str + in_words(numberToConvert)
		else
			return "nil"
		end

		return str
	end

	#private method which will generate words for a given number
	def in_words(givenNumber)
		str = ""
		givenNumber = givenNumber.abs

	  	# for unique numbers, returns from hash
	  	if number_words.has_key?(givenNumber)
	    	return number_words[givenNumber];
	  	end

		number_words.each do |num, name|
		    if givenNumber == 0
		      return str
		    elsif givenNumber < 100 && givenNumber/num > 0
		      return str + "#{name}" if givenNumber% num == 0
		      return str + "#{name} " + in_words(givenNumber%num)
		    elsif givenNumber/num > 0  #Just kept it for future use. if  givenNumber>100
		      return str + in_words(givenNumber/num) + " #{name} " + in_words(givenNumber%num)
		    end
		end
	end

	# mark in_words method private
	private :in_words

end


puts(EnglishNumber.new(75).in_english)
puts(EnglishNumber.new(43).in_english)
