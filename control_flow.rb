print "Vui long nhap tuoi: "
tuoi = gets.chomp.to_i
# if tuoi < 18
#   puts "Ban con vi thanh nien"
# elsif tuoi < 40
#   puts "Ban la nguoi thanh nien"
# elsif tuoi < 60
#   puts "Ban la nguoi trung nien"
# else
#   puts "khong biet ban la ai"
# end
name = "pingo 123"
case tuoi
when 18
  puts "tuoi = 18"
  if name.start_with? "pingo"
    puts "hello pingo"
  end
when 20
  puts "tuoi = 20"
else
  puts "unknown"
end

