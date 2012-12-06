require 'spec_helper'

describe "job_offers/show" do
  before(:each) do
    @job_offer = assign(:job_offer, stub_model(JobOffer,
      :title => "Title",
      :category => "Category",
      :budget => "Budget",
      :detail => "MyText",
      :place => "Place",
      :open_code => "Open Code",
      :option => "Option",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Category/)
    rendered.should match(/Budget/)
    rendered.should match(/MyText/)
    rendered.should match(/Place/)
    rendered.should match(/Open Code/)
    rendered.should match(/Option/)
    rendered.should match(/State/)
  end
end
