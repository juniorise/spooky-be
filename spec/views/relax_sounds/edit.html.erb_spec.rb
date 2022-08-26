require 'rails_helper'

RSpec.describe "relax_sounds/edit", type: :view do
  before(:each) do
    @relax_sound = assign(:relax_sound, RelaxSound.create!(
      category: nil,
      relax_sound_author: nil,
      icon: "MyString",
      license: "MyString",
      color_of_day: 1,
      active: false
    ))
  end

  it "renders the edit relax_sound form" do
    render

    assert_select "form[action=?][method=?]", relax_sound_path(@relax_sound), "post" do

      assert_select "input[name=?]", "relax_sound[category_id]"

      assert_select "input[name=?]", "relax_sound[relax_sound_author_id]"

      assert_select "input[name=?]", "relax_sound[icon]"

      assert_select "input[name=?]", "relax_sound[license]"

      assert_select "input[name=?]", "relax_sound[color_of_day]"

      assert_select "input[name=?]", "relax_sound[active]"
    end
  end
end
