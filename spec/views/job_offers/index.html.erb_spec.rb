require 'spec_helper'

describe "job_offers/index" do
  before(:each) do
    assign(:job_offers, [
      stub_model(JobOffer,
        :title => "Title",
        :category => "Category",
        :budget => "Budget",
        :detail => "MyText",
        :place => "Place",
        :open_code => "Open Code",
        :option => "Option",
        :state => "State"
      ),
      stub_model(JobOffer,
        :title => "Title",
        :category => "Category",
        :budget => "Budget",
        :detail => "MyText",
        :place => "Place",
        :open_code => "Open Code",
        :option => "Option",
        :state => "State"
      )
    ])
  end

  it "renders a list of job_offers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Budget".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Open Code".to_s, :count => 2
    assert_select "tr>td", :text => "Option".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
