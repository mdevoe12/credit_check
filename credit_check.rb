
puts "Let's check a card number's validity"
card_number = gets.chomp.to_s

card_digits = card_number.reverse.chars

digits_sum = 0

card_digits.each_with_index do |val, index|
  if index.even?
    digits_sum += val.to_i
  else
    double = val.to_i * 2
      if double < 10
        digits_sum += double
      else
        double = double.to_s
        digits_sum += double[1].to_i + double[0].to_i
      end
  end
end

if digits_sum % 10 == 0
  puts "Valid"
else
  puts "Invalid"
end
