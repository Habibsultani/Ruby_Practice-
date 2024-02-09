a = ["a" , "b"]
b = ["c" , "d"]
c = ["e" , "f"]


h = { a => 100, b => 200, c => 300, }

h_dizi = h.keys.to_a 
h_dizi.select.with_index {
  |harf, indis|
  if indis % 2 == 1 
    h_dizi.delete(h_dizi[indis])
    h_dizi.unshift h[harf]
  end   
}

# puts h_dizi

var = 'Colman'

i = 0 
j = 4 
 
while i <= 1
  while j > i 
    var = var.next 
    # print (var + " ")
    j =  j - 1
  end 
  j = 2
  i = i+1
end



def check_num a,b 
  if a == b
    return 0
  end
  
  if a % 4 == b % 4 
    return a < b ? a : b 
  end
  
  a > b ? a : b 
end 
 
p check_num(9, 12)
p check_num(11, 11)
p check_num(3, 13)

# frozen_string_literal: true

# BUU' na istisna kapsaminde uygun olan kelimeleri kontrol eden metot
def is_an_exception?(word_to_search) 
  
  # BUU' na istisna kapsaminde uygun olan kelimeler listesidir. Degistirmeyiniz!
  exception_words = %w[anne dahi elma hangi hani inanmak] 

  return exception_words.include?(word_to_search)
    
end

# BUU aranmayan kelimeleri kontrol eden metot
def is_not_required?(word_to_search)

  # BUU aranmayan kelimeler listesidir. Degistirmeyiniz!
  not_required_words = %w[ahenk badem ceylan fidan gazete hamsi kestane limon model otomatik pehlivan selam tiyatro viraj ziyaret]
  
  return not_required_words.include?(word_to_search)
    
end

# Bir kelimenin BUU' na uygun olup/olmadigini bildiren metot
def is_harmonic?(word_to_search) 

  #Kontrol icin kullanilacak kalin ve ince harfler
  thick_vowels = word_to_search.match(/[aıou]/i)
  thin_vowels = word_to_search.match(/[eiöü]/i)
  
  thick_vowels.nil? ^ thin_vowels.nil?

end


words = gets.chomp.split # Kelimeleri al

for word in words
  if is_an_exception?(word)
    puts "#{word} : ISTSN"
   elsif is_not_required?(word)
    puts "#{word} : ARANMZ"
   elsif is_harmonic?(word)
    puts "#{word} : UYGUN"
   else 
    puts "#{word} : UYGNDGL"
  end 
end
