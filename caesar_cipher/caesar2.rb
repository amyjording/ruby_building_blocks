def caesar_cipher(text, shift) #define method, placeholders
  text = text.split("") #split text by characters and spaces into array
  shift = shift % 26 #allow for shift numbers over 26 and negative
  new_text = ""

            text.each do |char|
                if /[A-Za-z]/ === char
                  new_char = char.ord + shift  # this swaps characters to their ascii number and shifts

                    if (/[A-Z]/ === char && new_char > 90 || /[a-z]/ === char && new_char > 122)
                    new_char -= 26  # checks ascii table for numbers to stop at
                                    # so that it stays in the alphabet realm of ascii

                    elsif (/[A-Z]/ === char && new_char < 65 || /[a-z]/ === char && new_char < 97)
                    new_char += 26  # same as above, so basically tying z back to a

                    end

                    new_char = new_char.chr  #switching back to characters from ascii

                else

                 new_char = char  #leaving non alphabet spaces and punctuation alone
                  end
                    new_text << new_char  #inserting shifted alphabet letters into new text
            end #end of block
puts new_text #finished product
end

caesar_cipher("Hi, my name is Amy!", 6)
