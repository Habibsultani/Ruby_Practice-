# frozen_string_literal: true

students = {
  'Bilgisayar' => {
    'isim' => ['Ahmet Ekinci', 'Mehmet Mutlu', 'Zeynep Yorulmaz'],
    'not' => [[50, 40, 75], [30, 80, 45], [90, 65, 55]],
    'aldigi dersler' => [['Matematik', 'Programlama', 'Fizik'], ['Matematik', 'Bilgisaya Müh. Giris', 'Programlama'], ['Yabanci Dİl', 'Bilgisaya Müh. Giris', 'Fizik']]
  },
  'Elektrik' => {
    'isim' => ['Ali Kilic', 'Mehmet Yilmaz'],
    'not' => [[60, 75], [40, 75]],
    'aldigi dersler' => [['Matematik', 'EMT'], ['EMT', 'Programlama']]
  },
  'Makina' => {
    'isim' => ['Ayse Mutlu', 'Betul Yildiz'],
    'not' => [[45, 75], [30, 95, 50]],
    'aldigi dersler' => [['Matematik', 'Programlama'], ['Kimya', 'Programlama', 'Fizik']]
  }
}

def points_courses(students, course) # Öğrenciler ve verilen derse göre bölüm bazında dersi alan isimler(courses) ve derse ait notlar(points) sözlüğü üretimi

      derss = ['Bilgisayar', 'Elektrik', 'Makina']

      points = Hash.new {|hash , key| hash[key] = []}
      
      derss.each do |dersser| 
          students[dersser]['aldigi dersler'].each_with_index do |crsa, index1| 
          crsa.each_with_index do |crs, index|
            points[crs] << students[dersser]['not'][index1][index]
          end  
        end
      end  

      ortalama = points[course].sum / points[course].length
  
      puts "{\"#{course}\"=>#{points[course]}}"
      puts ortalama
end  

def findTheCourse(students, cor) 
  
  courses = {
    'Programlama' => {
      "Bilgisayar" => [],
      "Elektrik" => [],
      "Makina" => [],
    },
    'Fizik' => {
      "Bilgisayar" => [],
      "Elektrik" => [],
      "Makina" => [],
    },
    'EMT' => {
      "Bilgisayar" => [],
      "Elektrik" => [],
      "Makina" => [],
    },
    'Bilgisaya Müh. Giris' => {
      "Bilgisayar" => [],
      "Elektrik" => [],
      "Makina" => [],
    },
    'Yabanci Dİl' => {
      "Bilgisayar" => [],
      "Elektrik" => [],
      "Makina" => [],
    },
    'Matematik' => {
      "Bilgisayar" => [],
      "Elektrik" => [],
      "Makina" => [],
    },
    'Kimya' => {
      "Bilgisayar" => [],
      "Elektrik" => [],
      "Makina" => [],
    },
  }

  def derslerListe(students ,ders, cor, courses) 
    students[ders]['isim'].each_with_index do |ad, index| 
    if students[ders]['aldigi dersler'][index].include?(cor)
      courses[cor][ders] << ad
    end  
   end
  end

  derslerListe(students, 'Bilgisayar', cor, courses)
  derslerListe(students, 'Elektrik', cor, courses)
  derslerListe(students, 'Makina', cor, courses)


  puts courses[cor]

end 
course, requested = gets.chomp.split


if requested == 'not_ortalama'
  points_courses(students,course)
elsif requested == 'ogr_liste'
  findTheCourse(students, course)
else 
  puts "Something went wrong try again."
end  
