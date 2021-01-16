# frozen_string_literal: true

require_relative './hash_sym'

def decrypt(code = nil)
  return nil if code.nil?

  nums = []
  array = k_v.values
  code = code.split('').map { |e| array.include?(e) ? k_v.invert[e].to_s : e }
  testing = code[3...-3]
  testing.each { |e| nums << ('a'..'z').to_a.index(e.to_s) - 3 }
  nums.join.rjust(testing.size, '0')
end

# Comment this out to run the rspec tests cleanly

puts 'Please enter the number you would like to decrypt!'
puts '-------------------------------------------------'
print 'Code to Decrypt: '
request_code = gets.chomp.to_s
puts '-------------------------------------------------'
puts "Decrypted Code: #{decrypt(request_code)}"
puts '-------------------------------------------------'
