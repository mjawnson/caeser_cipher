#Prompt the user for a String to encrypt
puts "What would you like to encrpyt?"
user_string = gets.chomp
#Prompt the user for the encryptor Key (i.e. number of alphabet places to move)
puts "What key would you like to use for encryption (i.e. letter shift)?"
user_key = gets.chomp.to_i

#Function that takes the user String and Key and outputs the encrypted String
def caesar_cipher(str, num = 0)
#Define an empty array to store the encryped String
encrypted_string = []
#Convert the input String into an array 
string_array = str.split("")
#Loop through the array to determine:"
encrypted_string = string_array.map do |character|
#IF character is lowercase (i.e. unicode between 97 and 122) then shift the unicode character by num
    if (character.ord >= 97 && character.ord <= 122)
        ((character.ord - 97 + num) % 26 + 97).chr
#ELSEIF character is uppercase (i.e. unicode between 65 and 90) then shift the unicode character by num
    elsif (character.ord >= 65 && character.ord <=90)
        ((character.ord - 65 + num) % 26 + 65).chr
#ELSE character is not uppercase or lower alphabet and should be added to the encryption as is
    else character
    end
end
#Join the array to make it a String and return it
encrypted_string.join
end

#Run a function that takes the user String and Key to output the encrypted String
puts caesar_cipher(user_string, user_key)