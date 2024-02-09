eski = %w[limon sumak]

tatli = %w[kavun karpuz]

['greyfruite' , 'limon' , 'karpuz'].map do |fruite|
    
  if eski.include? fruite 
    puts "#{fruite} : ESKI"
  elsif tatli.include? fruite
    puts "#{fruite} : 'tatli"  
  else 
    puts "#{fruite} : nill"

  end
end  


def findWord(word)
  turkish_to_english = {
    'iyi' => 'good',
    'kötü' => 'bad',
    'çirkin' => 'ugly'   
  }


 


  if !turkish_to_english.include? word
    puts "#{word} has not found!"
  else
    puts turkish_to_english[word]
  end  
end


foo = gets.chomp

findWord(foo)


  
def change(key, value) 
    turkish_to_english = {
    'iyi' => 'good',
    'kötü' => 'bad',
    'çirkin' => 'ugly'   
  }

   
  turkish_to_english[key] = value
  puts turkish_to_english
end

puts 'write the key you want change:'
foo1 = gets.chomp

puts 'write the value'

foo2 = gets.chomp

change(foo1, foo2)


  turkish_to_english = {
  'iyi' => 'good',
  'kötü' => 'bad',
  'çirkin' => 'ugly' ,  
  'ulasmak' => 'capture'   
 }

  chombrige_to_english = {
  'iyi' => 'good',
  'hizli' => 'fast',
  'ince' => 'thin',
 }

chombrige_to_english.each do |key, value| 
  if !turkish_to_english.keys.include? key 
    turkish_to_english[key] = value
  end
end

puts turkish_to_english



anagram = {
  'iyi'    => [],
  'kötü'   => [],
  'çirkin' => [],
  'kalem' => [],
  'marsa' => ['marsa' , 'sarma']
}

foo = gets.chomp

anagram.each do |key, value| 
  if key == foo 
    anagram[key] << foo 
  elsif !(key == foo)
    anagram[foo] = foo
  else 
    anagram[key] << value  
  end
end    

puts anagram


name = 'kincir'/
names2 = name.chars

names2[3] = names2[0]

names.each_with_index do |harf, index1|
  names2.each_with_index do |harf , index| 
    names2[index1] = names2[index]
 
  end 
end    

puts name
puts name2

def tekil(x) 
  x = x.split("").sort!.join
end

def anagram_include?(hash, string)
  hash.key.each do |key|
    if tekil(key) == tekil(string)
      return key
    end  
  end
 return nill
end

def anagram_add(hash, string) 
  case anagram_include?(hash, string).nil?
  when true 
    hash[string] = [string]
  when false 
    hash[anagram_include?(hash, string)] << string 
  end 
end

while true
  request = gets.chomp
  anagram_add(anagram, request)
  puts anagram
end

dizi = [1,2,3,4,5]
p dizi.sort do |a,b|
  if b < a 
    -1
  elsif b > a  
    1 
  else
    0
  end
end  

p [1, 2, 3, 4, 5].sort do |a, b|
  if b < a
    -1 # herhangi bir negatif değer de olabilir
  elsif b > a
    1 # herhangi bir pozitif değer de olabilir
  else
    0
  end
end #=> [5, 4, 3, 2, 1]
