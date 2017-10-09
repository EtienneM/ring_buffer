require 'spec_helper'

RSpec.describe RingBuffer do
  it 'has a version number' do
    expect(RingBuffer::VERSION).not_to be nil
  end

  describe '#initialize' do
    it 'should fail if max_size is not an integer' do
      expect { RingBuffer.new('biniou') }.to raise_exception Exception
    end

    it 'should fail if max_size is not negative' do
      expect { RingBuffer.new(-1) }.to raise_exception Exception
    end

    it 'should initialize the max_size at the given argument' do
      buffer = RingBuffer.new 10
      expect(buffer.max_size).to eq 10
    end
  end

  describe '#<<' do
    context 'given a full RingBuffer' do
      buffer = RingBuffer.new(10)
      (0..9).each do |i|
        buffer << "biniou-#{i}"
      end

      it 'should contain all the added elements' do
        expect(buffer.size).to eq 10
        (0..9).each do |i|
          expect(buffer[i]).to eq "biniou-#{i}"
        end
      end

      it 'should remove the first element and add the new one at the end' do
        buffer << 'biniou-10'
        expect(buffer.size).to eq 10
        (0..9).each do |i|
          expect(buffer[i]).to eq "biniou-#{i+1}"
        end
      end
    end
  end
end
