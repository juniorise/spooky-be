require 'rails_helper'

RSpec.describe "relax_sounds/index", type: :view do
  before(:each) do
    assign(:relax_sounds, [
      RelaxSound.create!(
        category: nil,
        relax_sound_author: nil,
        icon: "Icon",
        license: "License",
        color_of_day: 2,
        active: false
      ),
      RelaxSound.create!(
        category: nil,
        relax_sound_author: nil,
        icon: "Icon",
        license: "License",
        color_of_day: 2,
        active: false
      )
    ])
  end

  it "renders a list of relax_sounds" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Icon".to_s, count: 2
    assert_select "tr>td", text: "License".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
