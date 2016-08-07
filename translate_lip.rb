#!/usr/bin/env ruby

require 'find'  
require 'fileutils'

folder = "./cestina/sound"

Find.find(folder) do |f|  

        if f.to_s =~ /.*.lip$/

		puts "Processing " + f.to_s
		FileUtils.cp(f, f.to_s.gsub(/lip/, "lip.bkp") )
	
		result = File.new('tmp.lip', 'w') 
		source = File.open(f, 'rb') do |f1| 
			while line = f1.gets
				if line =~ /^".*"/ 
				   plaintext = line
				   result.puts plaintext
				   # puts line + " " + plaintext.length.to_s
			        elsif  line =~ /^PHRASE \w+ (\d+) .*" (.*)$/ 
				   phrase = "PHRASE char " + plaintext.chop.length.to_s + " " + plaintext.chop + " " + $2.to_s
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
