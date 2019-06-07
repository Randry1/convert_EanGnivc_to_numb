#coding: cp866
require 'fileutils'

input = File.open("./sh.txt","r")
output = File.open("output.txt","w")
input.each do |shkcode|
  
  
# shkcode = '%!00AJ0J-aeaaag!'
shkcode.upcase!
outcode = ''

alf = {'%' => 2, '!' => '', '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
       '7' => 7, '8' => 8, '9' => 9, '0' => 0,
       'B' => 1, 'C' => 2, 'D' => 3, 'E' => 4, 'F' => 5, 'G' => 6, 'H' => 7, 'I' => 8,
       'J' => 9, 'A' => 0, '-' => ''}



  0.upto(shkcode.size-1) do |x|
    alf.each do |key, value|
#    puts "key: #{key} value #{value} char: #{shkcode[x].chr}"
      if(key == shkcode[x].chr)
        outcode = outcode + value.to_s
       end
    end
   
#    puts "Sim: #{shkcode[x].chr}"
  end
  
puts "Конверт #{shkcode} - #{outcode}"
  
  output.puts "#{outcode.to_s};"
end


input.close
output.close
