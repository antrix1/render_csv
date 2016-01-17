require 'rails_helper'
RSpec.describe "CSV Delivery", type: :request do

  it "sends a csv file" do
    get documents_url(format: :csv)

    expect(response.body).to match("CSV")
    expect(response.headers["Content-Type"]).to match("text/csv")
  end

  it "renders a csv table" do
    visit new_document_path
    attach_file 'document[csv_file]', "#{Rails.root}/csv_render.csv"
    click_button "Upload"

    expect(current_path).to match(/documents\/\d/)
    expect(page).to have_selector :table
  end
end
