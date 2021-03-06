require 'minitest/autorun'
require '../lib/bank'
require '../lib/team'

class DeepFreezableTest < Minitest::Test
  include DeepFreezable
  
  def test_deep_freeze_to_array
    # 配列の値は正しいか？
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    # 配列自身がfreezeされているか？
    assert Team::COUNTRIES.frozen?
    # 配列の要素がすべてfreezeされているか？
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end
  
  def test_deep_freeze_to_hash
    # 配列の値は正しいか？
    assert_equal(
      { 'japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' },
      Bank::CURRENCIES
    )
    # 配列自身がfreezeされているか？
    assert Bank::CURRENCIES.frozen?
    # 配列の要素がすべてfreezeされているか？
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end