# frozen_string_literal: true

class SimpleCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers.split(/\D+/).map(&:to_i).sum
  end
end
