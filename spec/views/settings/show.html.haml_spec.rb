require 'spec_helper'

describe "settings/show" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :title => "Title",
      :link => "Link",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Link/)
    rendered.should match(/Color/)
  end
end
