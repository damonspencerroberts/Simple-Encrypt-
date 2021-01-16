require_relative '../encrypt'
require_relative '../decrypt'

testing_nums = (1..1_000_000)
testing_arr = []
1000.times { testing_arr << rand(testing_nums) }

describe '#encrypt and decrypt' do
  testing_arr.each_with_index do |e, i|
    it "Should translate #{e} to encrypted and return it back. Test #{i + 1}" do
      test = e
      actual = encrypt(test)
      expected = decrypt(actual).to_i
      expect(expected).to eq(test)
    end
  end
end
