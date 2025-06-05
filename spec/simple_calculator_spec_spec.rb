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
  end
end
