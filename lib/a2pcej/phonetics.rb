module A2pcej
    class Phonetics
        ALPHABET = {
            "en" => [
                "Alfa",
                "Bravo",
                "Charlie",
                "Delta",
                "Echo",
                "Foxtrot",
                "Golf",
                "Hotel",
                "India",
                "Juliett",
                "Kilo",
                "Lima",
                "Mike",
                "November",
                "Oscar",
                "Papa",
                "Quebec",
                "Romeo",
                "Sierra",
                "Tango",
                "Uniform",
                "Victor",
                "Whiskey",
                "Xray",
                "Yankee",
                "Zulu"
            ],
            "ja" => [
                "エイ",
                "ビー",
                "シー",
                "ディー",
                "イー",
                "エフ",
                "ジー",
                "エイチ",
                "アイ",
                "ジェイ",
                "ケイ",
                "エル",
                "エム",
                "エヌ",
                "オー",
                "ピー",
                "キュー",
                "アール",
                "エス",
                "ティー",
                "ユー",
                "ヴィー",
                "ダブリュー",
                "エクス",
                "ワイ",
                "ゼット"
            ],
        }
    
        NUMBER = {
            "en" => [
                "zero",
                "one",
                "two",
                "three",
                "four",
                "five",
                "six",
                "seven",
                "eight",
                "nine"
            ],
            "ja" => [
                "ゼロ",
                "イチ",
                "ニイ",
                "サン",
                "ヨン",
                "ゴウ",
                "ロク",
                "シチ",
                "ハチ",
                "キュウ"
            ],
        }
    
        def get_phonetics(lang)
            {
                alphabet: get_alphabet_dict(lang),
                number: get_number_dict(lang),
            }
        end
        
        def get_alphabet_dict(lang)
            ALPHABET.fetch(lang).map.with_index { | k, i | [(65+i).chr, k]}.to_h
        end
            
        def get_number_dict(lang)
            NUMBER.fetch(lang).map.with_index { | k, i | [i.to_s, k]}.to_h
        end
    end
end
