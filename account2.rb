
@danh_sach_tai_khoan = []
def show_account_detail
  puts "-- Hien thi thong tin tai khoan --"
  print "Nhap ten tai khoan trong he thong: "
  ten = gets.chomp
  tk = @danh_sach_tai_khoan.detect{|t| t[:name] == ten }
  if tk == nil
    puts "!!! Tai khoan #{ten} khong ton tai !!!"
  else
    puts "Tai khoan #{tk[:name]} co gia tri la $#{tk[:value]}"
  end
end
def add_account
  tk = {}
  puts "-- Them tai khoan -- "
  loop do
    print "Ten tai khoan: "
    tk[:name] = gets.chomp
    existed = @danh_sach_tai_khoan.detect{|t| t[:name] == tk[:name] }
    if existed != nil
      puts "Tai khoan #{tk[:name]} da ton tai!"
    else
      break
    end
  end
  print "Gia tri tai khoan: "
  tk[:value] = gets.chomp.to_i
  @danh_sach_tai_khoan << tk
end
def list_all_accounts
  puts "-- Danh sach tai khoan --"
  @danh_sach_tai_khoan.each_with_index do |tk, idx|
    puts "#{idx + 1}. Tai khoan #{tk[:name]} co gia tri la $#{tk[:value]}"
  end
end
def get_total_value
  total = @danh_sach_tai_khoan.inject(0){|rs, tk| rs += tk[:value]}
  puts "-- Tong gia tri trong he thong: #{total}"
end
def get_command
  print "Vui long nhap lenh: "
  cmd = gets.chomp
end

while((cmd = get_command) != "exit")
  case cmd
  when "add"
    add_account
  when "list"
    list_all_accounts
  when "total"
    get_total_value
  when "show"
    show_account_detail
  else
    puts "Lenh khong hop le"
  end
  # print "Vui long nhap lenh: "
  # cmd = gets.chomp
end
puts "Bye bye, good night!"
