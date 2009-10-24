# coding: utf-8
module Cyrillizer
	module Converter

    Latin    = "AaBbVvGgDdEeZzJiKjKkLlMmNnOoPpRrSsTtUuFfHhCc"
    Cyrillic = "АаБбВвГгДдЕеЗзИиЈјКкЛлМмНнОоПпРрСсТтУуФфХхЦц"

    Latin_a    = %w(Dzh dzh Gj gj Zh zh Dz dz Lj lj Nj nj Kj kj Ch ch Sh sh)
    Cyrillic_a = %w(Џ   џ   Ѓ  ѓ  Ж  ж  Ѕ  ѕ  Љ  љ  Њ  њ  Ќ  ќ  Ч  ч  Ш  ш )

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
puts Cyrillizer::Converter::Latin.split('').to_s.to_cyr
puts Cyrillizer::Converter::Latin_a.to_s.to_cyr