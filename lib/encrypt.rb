require_relative 'enigma'
message_text, encryption_text = ARGV

read_message = open(message_text, 'r') { |m| m.read }
new_message = read_message

enigma = Enigma.new

result = enigma.encrypt(new_message)

read_encryption = open(encryption_text, 'w')

read_encryption.write(result[:encryption])

puts "Created #{encryption_text} with the key #{result[:key]} and date #{result[:date]}"
