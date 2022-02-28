# frozen_string_literal: true

# Packs/Unpacks a String to and from an Integer
module ShortStringPacker
  ## Packs a short string into a Integer
  # Arguments:
  #   str - String object
  # Returns: a Integer object
  def self.pack(str)
    ("1" + str.split("")
              .map { |m| (m.ord - 96)
                           .to_s(2)
                           .rjust(5, "0") }
              .reduce{ |r1,r2| r1 + r2 })
      .to_i(2)
  end

  ## Unpacks a Integer from pack() method into a short string
  # Arguments:
  #   packed - a Integer object
  # Returns: a String object
  def self.unpack(packed)
    packed.to_s(2)[1..-1]
      .scan(/.{5}/)
      .map{|m| (m.to_i(2) + 96).chr}
      .reduce { |r1, r2| r1 + r2}
  end
end
