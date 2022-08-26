require 'rails_helper'

RSpec.describe "relax_sounds/show", type: :view do
  before(:each) do
    @relax_sound = assign(:relax_sound, RelaxSound.create!(
      category: nil,
      relax_sound_author: nil,
      icon: "Icon",
      license: "License",
      color_of_day: 2,
      active: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/License/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
