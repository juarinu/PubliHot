require 'test_helper'

class AdvertTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Advert.new.valid?
  end
end
