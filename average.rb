# frozen_string_literal: true

foo = gets.chomp

foo1 = foo.split("-")

def yasOrtalamasi(yasList, censiyetList) 
 yaslar = Hash.new { |hash, key| hash[key] = []}

 censiyetList.each_with_index do |cens, index| 
  yaslar[cens] << yasList[index]
 end  

 femaleOrta = yaslar["F"].map(&:to_f)
 femaleOrtalama = femaleOrta.sum / yaslar["F"].length

 maleOrta = yaslar["M"].map(&:to_f)
 maleOrtalama = maleOrta.sum / yaslar["M"].length  


 if femaleOrtalama > maleOrtalama 
    puts "F : #{femaleOrtalama} H"
    puts "M : #{maleOrtalama} L"

   elsif maleOrtalama > femaleOrtalama
    puts "F : #{femaleOrtalama} L"
    puts "M : #{maleOrtalama} H"

   else 
    puts "F : #{femaleOrtalama} "
    puts "M : #{maleOrtalama} "

  end
end

yasList = foo1[0].split.map(&:to_i)
censiyetList = foo1[1].split

yasOrtalamasi(yasList, censiyetList)

# Örnek 1: Kullanıcı 27 25 30 20 15 - F M F M M girdiğinde:
# Örnek 2: Kullanıcı 22 25 20 27 - F F M M girdiğinde:
# Örnek 3: Kullanıcı 30 20 22 27 - M F F F girdiğinde:
# Örnek 4: Kullanıcı 40 43 36 36 35- M F M F F girdiğinde:
