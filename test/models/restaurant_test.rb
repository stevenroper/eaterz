require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  def setup
    @restaurant = Restaurant.new(name: 'Test Restaurant')
  end

  test 'invalid restaurant name' do
    assert @restaurant.valid?
  end

  test 'valid restaurant name' do
    @restaurant.name = '   '
    assert_not @restaurant.valid?
  end

end
