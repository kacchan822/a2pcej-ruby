RSpec.describe A2pcej::Phonetics do
  describe 'class' do
    it "has ALPHABET dictonary" do
      expect(A2pcej::Phonetics::ALPHABET).not_to be nil
    end
    it "has NUMBER dictonary" do
      expect(A2pcej::Phonetics::NUMBER).not_to be nil
    end
  end
  describe '.get_phonetics' do
    let(:phonetics) { A2pcej::Phonetics.new }
    it 'has method' do
      expect(phonetics.respond_to?(:get_phonetics, true)).to be true
    end
    context 'with lang=en' do
      it 'can get dictionary' do
        expect(phonetics.get_phonetics("en")[:alphabet].has_key?("A")).to be true
        expect(phonetics.get_phonetics("en")[:alphabet].has_key?("Z")).to be true
        expect(phonetics.get_phonetics("en")[:number].has_key?("0")).to be true
        expect(phonetics.get_phonetics("en")[:number].has_key?("9")).to be true
      end
    end
    context 'with lang=ja' do
      it 'can get dictionary' do
        expect(phonetics.get_phonetics("ja")[:alphabet].has_key?("A")).to be true
        expect(phonetics.get_phonetics("ja")[:alphabet].has_key?("Z")).to be true
        expect(phonetics.get_phonetics("ja")[:number].has_key?("0")).to be true
        expect(phonetics.get_phonetics("ja")[:number].has_key?("9")).to be true
      end
    end
  end
end
