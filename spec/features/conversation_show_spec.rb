require 'rails_helper'

 describe "Conversation Show Page", type: :feature do
  before(:each) do
    @conversation1 = Conversation.create( title: "Books", start_date: Date.today)
    @conversation2 = Conversation.create( title: "Phones", start_date: Date.today)
    @message1 = @conversation1.messages.create(text: "Best C++ Book")
    @message2 = @conversation1.messages.create(text: "Good practice questions")
    @message3 = @conversation2.messages.create(text: "Affordable phone")
  end

  it "shows all messages and thoughts for the conversation" do
    visit "/conversations/#{@conversation1.id}"
    expect(page).to have_content(@conversation1.title)
    expect(page).to_not have_content(@conversation2.title)
    expect(page).to have_content(@message1.text)
    expect(page).to have_content(@message2.text)
    expect(page).to_not have_content(@message3.text)
  end

  it "adds a new message" do
    visit "/conversations/#{@conversation1.id}"
    click_link("New Message")
    fill_in(:text, with: "C# 9 and .NET 5")
    click_button("Add Message")
    expect(page).to have_content("C# 9 and .NET 5")
  end

end
