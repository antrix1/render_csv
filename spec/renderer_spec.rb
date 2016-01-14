require 'rails_helper'
RSpec.describe "ActionController::Renderers" do
  it "should have a custom renderer" do
    expect(ActionController::Renderers.instance_methods).to include(:_render_with_renderer_csv_table)
  end
end
