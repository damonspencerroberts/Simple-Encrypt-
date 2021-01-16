# frozen_string_literal: true

require_relative './hash_sym'

def encrypt(code = nil)
  return nil if code.nil?

  array = k_v.keys
  alpha = ('a'..'z').to_a
  rn_aph1 = [r_n(alpha), r_n(alpha), r_n(alpha)]
  rn_aph2 = [r_n(alpha), r_n(alpha), r_n(alpha)]
  new_code = code.to_s.split('').map! { |e| e.to_i + 3 }
  new_string = "#{rn_aph1.join('')}#{new_code.map! { |e| alpha[e] }.join}#{rn_aph2.join('')}"
  new_string.split('').map! { |e| array.include?(e.to_sym) ? k_v[e.to_sym] : e }.join('')
end

def r_n(array)
  array[rand(0...array.length)]
end

# Comment this out to run the rspec tests cleanly

puts 'Please enter the number you would like to encrypt!'
puts '-------------------------------------------------'
print 'Code to encrypt: '
request_code = gets.chomp.to_s
puts '-------------------------------------------------'
puts "Encrypted Code: #{encrypt(request_code)}"
puts '-------------------------------------------------'
