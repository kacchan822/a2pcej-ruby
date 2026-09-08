module A2pcej
  def self.conv_al(letters, delimiter: nil, sign: nil, num: false)
    convert(letters, lang: "en", delimiter: delimiter, sign: sign, num: num)
  end

  def self.conv_ak(letters, delimiter: nil, sign: nil, num: false)
    convert(letters, lang: "ja", delimiter: delimiter, sign: sign, num: num)
  end

  def self.convert(letters, lang:, delimiter:, sign:, num:)
    phonetics = Phonetics.new.get_phonetics(lang)
    delimiter ||= phonetics[:delimiter]
    sign ||= phonetics[:sign]

    letters.chars.map do |letter|
      convert_letter(letter, phonetics, sign, num)
    end.join(delimiter)
  end
  class << self
    private

    def convert_letter(letter, phonetics, sign, num)
      if phonetics[:alphabet].key?(letter.upcase)
        converted = phonetics[:alphabet][letter.upcase]
        converted += sign if letter.match?(/[A-Z]/)
        converted
      elsif num && phonetics[:number].key?(letter)
        phonetics[:number][letter]
      else
        letter
      end
    end
  end
end
