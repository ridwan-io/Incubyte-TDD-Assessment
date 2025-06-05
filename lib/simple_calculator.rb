
class SimpleCalculator
  def add(numbers)
    return 0 if numbers.empty?
    split_numbers = numbers.split(/[^0-9-]/)
    check_negative(split_numbers)

    split_numbers.map(&:to_i).sum
  end

  def check_negative(numbers)
    negative_numbers = numbers.select { |number| number.to_i < 0 }
    raise(ArgumentError, "negative numbers not allowed: #{negative_numbers.join(", ")}") unless negative_numbers.empty?
  end
end
