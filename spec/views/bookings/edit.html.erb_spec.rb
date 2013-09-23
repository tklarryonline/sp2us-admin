require 'spec_helper'

describe "bookings/edit" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :user => nil,
      :room => nil,
      :start => "MyString",
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do
      assert_select "input#booking_user[name=?]", "booking[user]"
      assert_select "input#booking_room[name=?]", "booking[room]"
      assert_select "input#booking_start[name=?]", "booking[start]"
      assert_select "input#booking_title[name=?]", "booking[title]"
      assert_select "textarea#booking_description[name=?]", "booking[description]"
    end
  end
end
