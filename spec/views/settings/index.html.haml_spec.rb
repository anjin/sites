require 'spec_helper'

describe "settings/index" do
  before(:each) do
    assign(:settings, [
      stub_model(Setting,
        :title => "Title",
        :link => "Link",
        :color => "Color"
      ),
      stub_model(Setting,
        :title => "Title",
        :link => "Link",
        :color => "Color"
      )
    ])
  end

  it "renders a list of settings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
