RSpec.describe A2pcej do
  it "has a version number" do
    expect(A2pcej::VERSION).not_to be nil
  end
  describe 'conv_al' do
    context 'default' do
      vaild_values = [
        ['examples', 'Echo-Xray-Alfa-Mike-Papa-Lima-Echo-Sierra'],
        ['Examples002', 'Echo(CAPS)-Xray-Alfa-Mike-Papa-Lima-Echo-Sierra-0-0-2'],
        ['hoge', 'Hotel-Oscar-Golf-Echo'],
        ['h0ge', 'Hotel-0-Golf-Echo'],
        ['HogE', 'Hotel(CAPS)-Oscar-Golf-Echo(CAPS)'],
        ['h0ge#', 'Hotel-0-Golf-Echo-#']
      ]
      vaild_values.each do |input_value, expect_value|
        it { expect(A2pcej.conv_al(input_value)).to eq expect_value }
      end
    end
    context 'with options' do
      vaild_values = [
        ['Examples003', 'Echo(CAPITAL), Xray, Alfa, Mike, Papa, Lima, Echo, Sierra, 0, 0, 3', {'delimiter': ', ', 'sign': '(CAPITAL)'}],
        ['Examples004', 'Echo(CAPS)-Xray-Alfa-Mike-Papa-Lima-Echo-Sierra-zero-zero-four', {'num': true}]
      ]
      vaild_values.each do |input_value, expect_value, opt|
        it { expect(A2pcej.conv_al(input_value)).to eq expect_value }
      end
    end
  end
  describe 'conv_ak' do
    context 'default' do
      vaild_values = [
        ['examples', 'イー・エクス・エイ・エム・ピー・エル・イー・エス'],
        ['Examples002', 'イー（大文字）・エクス・エイ・エム・ピー・エル・イー・エス・0・0・2'],
        ['hoge', 'エイチ・オー・ジー・イー'],
        ['h0ge', 'エイチ・0・ジー・イー'],
        ['HogE', 'エイチ（大文字）・オー・ジー・イー（大文字）'],
        ['h0ge#', 'エイチ・0・ジー・イー・#'],
      ]
      vaild_values.each do |input_value, expect_value|
        it { expect(A2pcej.conv_ak(input_value)).to eq expect_value }
      end
    end
    context 'with options' do
      vaild_values = [
        ['Examples003', 'イー(大)／エクス／エイ／エム／ピー／エル／イー／エス／0／0／3', {'delimiter': '／', 'sign': '(大)'}],
        ['Examples004', 'イー（大文字）・エクス・エイ・エム・ピー・エル・イー・エス・ゼロ・ゼロ・ヨン', {'num': true}]
      ]
      vaild_values.each do |input_value, expect_value, opt|
        it { expect(A2pcej.conv_ak(input_value)).to eq expect_value }
      end
    end
  end
end
