def num_to_words(number)
  words = ""
  ind_numbers = {1 => "satu", 2 => "dua", 3 => "tiga", 4 => "empat", 5 => "lima", 6 => "enam", 7 => "tujuh", 8 => "delapan", 9 => "sembilan"}

  if ind_numbers.has_key?(number)
    words += ind_numbers[number]
  else
  end
  
  words
end