require 'spec_helper'

describe "settings/edit" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :title => "MyString",
      :link => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => settings_path(@setting), :method => "post" do
      assert_select "input#setting_title", :name => "setting[title]"
      assert_select "input#setting_link", :name => "setting[link]"
      assert_select "input#setting_color", :name => "setting[color]"
    end
  end
end
