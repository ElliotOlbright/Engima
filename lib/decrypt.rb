require './lib/enigma'

file_to_decrypt = ARGV[0]
decrypted_file = ARGV[1]
key = ARGV[2]
date = ARGV[3]

message_to_decrypt = File.read(file_to_decrypt)
enigma = Enigma.new
decryption = enigma.decrypt(message_to_decrypt, key, date)
File.open(decrypted_file, "w") { |file| file.write(decryption[:decryption]) }

p "Created '#{decrypted_file}' with the key #{decryption[:key]} and date #{decryption[:date]}"
