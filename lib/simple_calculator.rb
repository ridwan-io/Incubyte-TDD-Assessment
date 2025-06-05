
class SimpleCalculator
  def add(numbers)
    return 0 if numbers.empty?
    split_numbers = numbers.split(/[^0-9-]/)
    negative_numbers = split_numbers.select { |number| number.to_i < 0 }
    raise(ArgumentError, "negative numbers not allowed: #{negative_numbers.join(", ")}") unless negative_numbers.empty?

    split_numbers.map(&:to_i).sum
  end
end
