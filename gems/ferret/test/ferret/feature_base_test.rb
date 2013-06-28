puts "test included"
require 'test/unit'
require 'ferret'

class Ferret::FeatureBaseTest < Test::Unit::TestCase
  def test_truth
    assert true
  end

  def test_false
    assert false
  end
  
end