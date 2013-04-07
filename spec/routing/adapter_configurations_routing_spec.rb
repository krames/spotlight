require "spec_helper"

describe AdapterConfigurationsController do
  describe "routing" do

    it "routes to #index" do
      get("/adapter_configurations").should route_to("adapter_configurations#index")
    end

    it "routes to #new" do
      get("/adapter_configurations/new").should route_to("adapter_configurations#new")
    end

    it "routes to #show" do
      get("/adapter_configurations/1").should route_to("adapter_configurations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/adapter_configurations/1/edit").should route_to("adapter_configurations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/adapter_configurations").should route_to("adapter_configurations#create")
    end

    it "routes to #update" do
      put("/adapter_configurations/1").should route_to("adapter_configurations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/adapter_configurations/1").should route_to("adapter_configurations#destroy", :id => "1")
    end

  end
end
