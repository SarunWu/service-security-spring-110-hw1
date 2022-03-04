# frozen_string_literal: true

# Packs/Unpacks a String to and from an Integer
module ShortStringPacker
  ## Packs a short string into a Integer
  # Arguments:
  #   str - String object
  # Returns: a Integer object
  def self.pack(str)
    str.bytes
       .map { |m| m - 96 }
       .reduce { |r1, r2| r1 << 5 | r2 }
  end

  ## Unpacks a Integer from pack() method into a short string
  # Arguments:
  #   packed - a Integer object
  # Returns: a String object
  def self.unpack(packed)
    packed.to_s(2)
          .reverse
          .scan(/.{1,5}/)
          .map { |m| (m.reverse.to_i(2) + 96).chr }
          .reverse
          .join
  end
end
