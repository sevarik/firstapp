require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :description => "MyText",
      :image_urld => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_image_urld[name=?]", "product[image_urld]"
    end
  end
end
