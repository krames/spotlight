require 'spec_helper'

describe "adapter_configurations/show" do
  before(:each) do
    @adapter_configuration = assign(:adapter_configuration, stub_model(AdapterConfiguration,
      :adapter => "Adapter",
      :name => "Name",
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Adapter/)
    rendered.should match(/Name/)
    rendered.should match(/Value/)
  end
end
