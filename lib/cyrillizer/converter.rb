# coding: utf-8
module Cyrillizer
	module Converter

    Latin    = "abvgdezijklmnoprstufhcABVGDEZIJKLMNOPRSTUFHC"
    Cyrillic = "абвгдезијклмнопрстуфхцАБВГДЕЗИЈКЛМНОПРСТУФХЦ"

    Latin_a    = %w(gj zh dz lj nj kj ch dzh sh Gj Zh Dz Lj Nj Kj Ch Dzh Sh)
    Cyrillic_a = %w(ѓ  ж  ѕ  љ  њ  ќ  ч  џ   ш  Ѓ  Ж  Ѕ  Љ  Њ  Ќ  Ч  Џ   Ш)

	  def to_cyr
      self.tr_group(Hash[*Latin_a.zip(Cyrillic_a).flatten]).tr(Latin, Cyrillic)
	  end

    protected
    def tr_group(groups = {})
      text = clone
      groups.each_pair { |latin, cyrillic|
        text.gsub!(latin, cyrillic)
      }
      return text
    end
	end
end

# Add to_cyr method to all Strings
class String
  include Cyrillizer::Converter
end
