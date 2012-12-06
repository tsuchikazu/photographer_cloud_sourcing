require 'spec_helper'

describe "job_offers/new" do
  before(:each) do
    assign(:job_offer, stub_model(JobOffer,
      :title => "MyString",
      :category => "MyString",
      :budget => "MyString",
      :detail => "MyText",
      :place => "MyString",
      :open_code => "MyString",
      :option => "MyString",
      :state => "MyString"
    ).as_new_record)
  end

  it "renders new job_offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => job_offers_path, :method => "post" do
      assert_select "input#job_offer_title", :name => "job_offer[title]"
      assert_select "input#job_offer_category", :name => "job_offer[category]"
      assert_select "input#job_offer_budget", :name => "job_offer[budget]"
      assert_select "textarea#job_offer_detail", :name => "job_offer[detail]"
      assert_select "input#job_offer_place", :name => "job_offer[place]"
      assert_select "input#job_offer_open_code", :name => "job_offer[open_code]"
      assert_select "input#job_offer_option", :name => "job_offer[option]"
      assert_select "input#job_offer_state", :name => "job_offer[state]"
    end
  end
end
