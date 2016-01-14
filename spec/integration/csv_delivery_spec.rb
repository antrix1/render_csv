require 'rails_helper'
RSpec.describe "CSV Delivery", type: :request do

  it "sends a csv file" do
    get home_url(format: :csv)

    expect(response.body).to match("CSV")
    expect(response.headers["Content-Type"]).to match("text/csv")
  end

  it "renders a csv table" do
  end
end
