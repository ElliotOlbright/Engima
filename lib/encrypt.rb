require './lib/enigma'

file_to_encrypt = ARGV[0]
encrypted_file = ARGV[1]
message_to_encrypt = File.read(file_to_encrypt)
enigma = Enigma.new
encryption = enigma.encrypt(message_to_encrypt)
File.open(encrypted_file, "w") {|file| file.write(encryption[:encryption]) }

p "Created '#{encrypted_file}' with the key #{encryption[:key]} and date #{encryption[:date]}"