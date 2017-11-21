digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']
#
# digits = ['1']
# en = ['one']
# fr = ['un']
#
# {
#   1: {french: 'un', english: 'one'}
# }
#
# # Transform the above arrays into this....
# #
# {
#   1: {french: 'un', english: 'one'},
#   2: {french: 'deux', english: 'two'},
#   3: {french: 'trois', english: 'three'},
#   ...
#   9: {french: 'neuf', english: 'nine'}
# }
#
#   {
#     digits[i] => {'french' => fr[i], 'english' => en[i]}
#   }
#
#
#
#
#
#
# french_hash  {
#   french => 'un'
# }
#
# english_hash {
#   english => 'one'
# }
#
#
# number {
#   1 => french_hash
# }
#
# number {
#   1 => english_hash
# }
#

# hash = {}
#   digits.map {|i| i.include?(',') ? (i.split /, /) : i}


total_hash = {}

digits.count.times do |number|
  key = digits[number].to_sym
  total_hash[key] = {french: fr[number], english: en[number] }
end

p total_hash
