require 'spec_helper'

describe "adapter_configurations/edit" do
  before(:each) do
    @adapter_configuration = assign(:adapter_configuration, stub_model(AdapterConfiguration,
      :adapter => "MyString",
      :name => "MyString",
      :value => "MyString"
    ))
  end

  it "renders the edit adapter_configuration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", adapter_configuration_path(@adapter_configuration), "post" do
      assert_select "input#adapter_configuration_adapter[name=?]", "adapter_configuration[adapter]"
      assert_select "input#adapter_configuration_name[name=?]", "adapter_configuration[name]"
      assert_select "input#adapter_configuration_value[name=?]", "adapter_configuration[value]"
    end
  end
end
