print "Vui long nhap lenh: "
cmd = gets.chomp
danh_sach_tai_khoan = []
while cmd != "exit"
  case cmd
  when "add"
    tk = {}
    puts "-- Them tai khoan -- "
    loop do
      print "Ten tai khoan: "
      tk[:name] = gets.chomp
      existed = danh_sach_tai_khoan.detect{|t| t[:name] == tk[:name] }
      if existed != nil
        puts "Tai khoan #{tk[:name]} da ton tai!"
      else
        break
      end
    end
    print "Gia tri tai khoan: "
    tk[:value] = gets.chomp.to_i
    danh_sach_tai_khoan << tk
  when "list"
    puts "-- Danh sach tai khoan --"
    danh_sach_tai_khoan.each_with_index do |tk, idx|
      puts "#{idx + 1}. Tai khoan #{tk[:name]} co gia tri la $#{tk[:value]}"
    end
  when "total"
    total = danh_sach_tai_khoan.inject(0){|rs, tk| rs += tk[:value]}
    puts "-- Tong gia tri trong he thong: #{total}"
  when "show"
    puts "-- Hien thi thong tin tai khoan --"
    print "Nhap ten tai khoan trong he thong: "
    ten = gets.chomp
    tk = danh_sach_tai_khoan.detect{|t| t[:name] == ten }
    if tk == nil
      puts "!!! Tai khoan #{ten} khong ton tai !!!"
    else
      puts "Tai khoan #{tk[:name]} co gia tri la $#{tk[:value]}"
    end
  else
    puts "Lenh khong hop le"
  end
  print "Vui long nhap lenh: "
  cmd = gets.chomp
end
puts "Bye bye, good night!"
