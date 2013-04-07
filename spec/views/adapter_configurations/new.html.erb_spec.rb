require 'spec_helper'

describe "adapter_configurations/new" do
  before(:each) do
    assign(:adapter_configuration, stub_model(AdapterConfiguration,
      :adapter => "MyString",
      :name => "MyString",
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new adapter_configuration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", adapter_configurations_path, "post" do
      assert_select "input#adapter_configuration_adapter[name=?]", "adapter_configuration[adapter]"
      assert_select "input#adapter_configuration_name[name=?]", "adapter_configuration[name]"
      assert_select "input#adapter_configuration_value[name=?]", "adapter_configuration[value]"
    end
  end
end
