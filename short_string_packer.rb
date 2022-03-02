# frozen_string_literal: true

# Packs/Unpacks a String to and from an Integer
module ShortStringPacker
  ## Packs a short string into a Integer
  # Arguments:
  #   str - String object
  # Returns: a Integer object
  def self.pack(str)
    str.split("")
       .map { |m| (m.ord - 96)}
       .reduce{ |r1, r2| r1 << 5 | r2 }
  end

  ## Unpacks a Integer from pack() method into a short string
  # Arguments:
  #   packed - a Integer object
  # Returns: a String object
  def self.unpack(packed)
    packed.to_s(2)
          .reverse
          .scan(/.{1,5}/)
          .map{ |m| (m.reverse.to_i(2) + 96).chr }
          .reverse
          .join
  end
end

# First Attemp
# Pack #
# ("1" + str.split("")
#           .map { |m| (m.ord - 96)
#                        .to_s(2)
#                        .rjust(5, "0") }
#           .reduce{ |r1,r2| r1 + r2 })
#   .to_i(2)
# -----------------------------------
# Unpack #
# packed.to_s(2)[1..-1]
#   .scan(/.{5}/)
#   .map{|m| (m.to_i(2) + 96).chr}
#   .reduce { |r1, r2| r1 + r2}
# -----------------------------------
# packer_bench.rb #
# pack  0.365504   0.003657   0.369161 (  0.373507)
# unpack  0.495524   0.004674   0.500198 (  0.501806)
# -----------------------------------

# Second(current) attemp
# pack  0.151116   0.001523   0.152639 (  0.154351)
# unpack  0.479838   0.003516   0.483354 (  0.483684)
