# frozen_string_literal: true

require 'rspec'
require_relative '../lib/simple_calculator'
RSpec.describe 'SimpleCalculator' do
  let(:calculator) { SimpleCalculator.new }

  describe '#add' do
    context 'with empty string' do
      it 'returns 0' do
        expect(calculator.add("")).to eq(0)
      end
    end
    context 'with single number' do
      it 'returns the number itself' do
        expect(calculator.add("1")).to eq(1)
        expect(calculator.add("5")).to eq(5)
        expect(calculator.add("42")).to eq(42)
      end
    end

    context 'with two numbers' do
      it 'returns sum of the numbers' do
        expect(calculator.add("1,2")).to eq(3)
        expect(calculator.add("1,5")).to eq(6)
        expect(calculator.add("10,20")).to eq(30)
      end
    end

    context 'with multiple numbers' do
      it 'handles any amount of numbers' do
        expect(calculator.add("1,2,3")).to eq(6)
        expect(calculator.add("1,2,3,4,5")).to eq(15)
        expect(calculator.add("10,20,30,40")).to eq(100)
        expect(calculator.add("1,2,3,4,5,6,7,8,9,10")).to eq(55)
      end
    end
  end
end
