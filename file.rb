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