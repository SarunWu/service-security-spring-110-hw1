# frozen_string_literal: true

require 'benchmark'
require './short_string_packer'

Benchmark.bm do |bench|
  letters = ('a'..'j').to_a.join
  packed = ShortStringPacker.pack(letters)

  bench.report 'pack' do
    100_000.times do
      ShortStringPacker.pack(letters)
    end
  end

  bench.report 'unpack' do
    100_000.times do
      ShortStringPacker.unpack(packed)
    end
  end
end
