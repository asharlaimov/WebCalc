require 'spec_helper'

describe "calc/index.html.erb" do
  it "displays result" do
    assign(:result, 100)

    render

    expect(rendered).to include("result")
    expect(rendered).to include("100")
  end
end
