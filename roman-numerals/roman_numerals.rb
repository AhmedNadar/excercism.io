class Fixnum
	VERSION =1
def to_roman
	a = self
  romaneq=""
  romans = {1 => "I", 5 => "V", 9 => "IX", 10 => "X", 50 => "L", 90 => "XC",100 => "C", 500 => "D", 900=> "CM", 1000 => "M"}
  standroman= [1,5,9,10,50,90,100,500,900,1000]
  standroman =standroman.reverse
  n=standroman[0]
  count=0
  puts "roman: #{romaneq}"
  while a!=0
  	div = a/n
  	puts "#{div} #{a} #{n}"
  	if div>0&&div<4
  		puts "#{div} #{n}"
  		(1..div).each do
  	    romaneq.concat(romans[n])
  	    puts "#{romaneq} romans[n]: #{romans[n]}"
  		end
  	end
    if div==4
    	puts "#{count}"
    	  romaneq.concat(romans[n])
   		  romaneq.concat(romans[n])
    end
    a=a-n*div
    count+=1
    n=standroman[count]
  end
  return romaneq
end
end

