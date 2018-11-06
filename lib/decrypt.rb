require_relative 'enigma'
encryption_txt, decryption_txt, key, offset = ARGV

read_message = open(encryption_txt, 'r') { |e| e.read}

enigma = Enigma.new

result = enigma.decrypt(read_message, key, offset)
read_decryption = open(decryption_txt, 'w')

read_decryption.write(result[:decryption])

print result
