# coding: utf-8
module Cyrillizer
	module Converter

    Latin    = "AaBbVvGgDdEeZzIiJjKkLlMmNnOoPpRrSsTtUuFfHhCc"
    Cyrillic = "АаБбВвГгДдЕеЗзИиЈјКкЛлМмНнОоПпРрСсТтУуФфХхЦц"

    Latin_a    = %w(DZH Dzh dzh GJ Gj gj ZH Zh zh DZ Dz dz LJ Lj lj NJ Nj nj KJ Kj kj CH Ch ch SH Sh sh)
    Cyrillic_a = %w(Џ   Џ   џ   Ѓ  Ѓ  ѓ  Ж  Ж  ж  Ѕ  Ѕ  ѕ  Љ  Љ  љ  Њ  Њ  њ  Ќ  Ќ  ќ  Ч  Ч  ч  Ш  Ш  ш )

	  def to_cyr
      self.tr_group(Latin_a, Cyrillic_a).tr(Latin, Cyrillic)
	  end

    protected
    def tr_group(from, to)
      text = clone
      from.each_with_index { |latin, i|
        text.gsub!(latin, to[i])
      }
      return text
    end
	end
end

# Add to_cyr method to all Strings
class String
  include Cyrillizer::Converter
end