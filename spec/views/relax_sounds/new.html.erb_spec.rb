require 'rails_helper'

RSpec.describe "relax_sounds/new", type: :view do
  before(:each) do
    assign(:relax_sound, RelaxSound.new(
      relax_sound_category: nil,
      relax_sound_author: nil,
      icon: "MyString",
      license: "MyString",
      color_of_day: 1,
      active: false
    ))
  end

  it "renders new relax_sound form" do
    render

    assert_select "form[action=?][method=?]", relax_sounds_path, "post" do

      assert_select "input[name=?]", "relax_sound[relax_sound_category_id]"

      assert_select "input[name=?]", "relax_sound[relax_sound_author_id]"

      assert_select "input[name=?]", "relax_sound[icon]"

      assert_select "input[name=?]", "relax_sound[license]"

      assert_select "input[name=?]", "relax_sound[color_of_day]"

      assert_select "input[name=?]", "relax_sound[active]"
    end
  end
end
