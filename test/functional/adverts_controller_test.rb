require 'test_helper'

class AdvertsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Advert.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Advert.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Advert.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to advert_url(assigns(:advert))
  end

  def test_edit
    get :edit, :id => Advert.first
    assert_template 'edit'
  end

  def test_update_invalid
    Advert.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Advert.first
    assert_template 'edit'
  end

  def test_update_valid
    Advert.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Advert.first
    assert_redirected_to advert_url(assigns(:advert))
  end

  def test_destroy
    advert = Advert.first
    delete :destroy, :id => advert
    assert_redirected_to adverts_url
    assert !Advert.exists?(advert.id)
  end
end
