require 'spec_helper'

describe "adapter_configurations/index" do
  before(:each) do
    assign(:adapter_configurations, [
      stub_model(AdapterConfiguration,
        :adapter => "Adapter",
        :name => "Name",
        :value => "Value"
      ),
      stub_model(AdapterConfiguration,
        :adapter => "Adapter",
        :name => "Name",
        :value => "Value"
      )
    ])
  end

  it "renders a list of adapter_configurations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Adapter".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
