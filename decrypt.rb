# frozen_string_literal: true

def decrypt(code = nil)
  return nil if code.nil?

  nums = []
  testing = code[3...-3]
  testing.split('').each { |e| nums << ('a'..'z').to_a.index(e.to_s) - 3 }
  nums.join.rjust(testing.size, '0')
end

puts 'Please enter the number you would like to decrypt!'
puts '-------------------------------------------------'
print 'Code to Decrypt: '
request_code = gets.chomp.to_s
puts '-------------------------------------------------'
puts "Decrypted Code: #{decrypt(request_code)}"
puts '-------------------------------------------------'
