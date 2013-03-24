require 'spec_helper'

describe "settings/new" do
  before(:each) do
    assign(:setting, stub_model(Setting,
      :title => "MyString",
      :link => "MyString",
      :color => "MyString"
    ).as_new_record)
  end

  it "renders new setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => settings_path, :method => "post" do
      assert_select "input#setting_title", :name => "setting[title]"
      assert_select "input#setting_link", :name => "setting[link]"
      assert_select "input#setting_color", :name => "setting[color]"
    end
  end
end
