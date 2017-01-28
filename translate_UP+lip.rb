#!/usr/bin/env ruby

require 'find'  
require 'fileutils'

folder = "./UP_Plus_CZ_1250/sound/whispers"

Find.find(folder) do |f|  

        if f.to_s =~ /.*.lip$/

		puts "Processing " + f.to_s
		# FileUtils.cp(f, f.to_s.gsub(/lip/, "lip.bkp") )
	
		result = File.new('tmp.lip', 'w') 
		source = File.open(f, 'rb') do |f1| 
			skip_line = 0 
			while line = f1.gets
				if line =~ /^.*(CITOSLOVCE|BUGGED)/ 
				   skip_line = 1
   				   result.puts line		
				elsif line =~ /^".*"/ 
				   plaintext = line
				   result.puts plaintext
				   if line =~ /^".*" / then puts "extra space in: " + f.to_s end
				   # puts line + " " + plaintext.length.to_s
			        elsif  line =~ /^(PHRASE.+)(".*"[^0-9]*)([0-9].+)$/ && skip_line == 0
			           # puts "ph: " + $1.to_s + " *** " + $2.to_s + " *** " + $3.to_s
				   phrase = "PHRASE char " + plaintext.chop.length.to_s + " " + plaintext.chop + " " + $3.to_s
				   result.puts phrase
			        elsif
				   result.puts line
				end   
			end
		end
		result.close
		File.rename(result, f)
	end
end 