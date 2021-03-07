require 'rails_helper'

describe "Conversation Index Page", type: :feature do
  before(:each) do
    @conversation1 = Conversation.create( title: "Books", start_date: Date.today)
    @conversation2 = Conversation.create( title: "Phones", start_date: Date.today)
  end

  it "show all conversations" do
    visit "/conversations"
    expect(page).to have_content(@conversation1.title)
    expect(page).to have_content(@conversation2.title)
  end

  it "creates a new conversation" do
    visit "/conversations"
    expect(page).to have_link "Create New Conversation"
    click_link("Create New Conversation")
    expect(current_path).to eq("/conversations/new")
    fill_in(:title, :with => "Cars")
    click_button("Add Conversation")
    expect(current_path).to eq("/conversations")
    expect(page).to have_content("Conversation Cars Added")
    expect(Conversation.all.count).to eq(3)
  end

  it "displays the conversation's name" do
    visit "/conversations"
    expect(page).to have_content(@conversation1.title)
    expect(page).to have_content(@conversation2.title)
  end

  it "checks title when add conversation" do
    visit "/conversations"
    click_link("Create New Conversation")
    expect(current_path).to eq("/conversations/new")
    fill_in(:title, :with => "")
    click_button("Add Conversation")
    expect(page).to have_content("Title can't be blank")
    fill_in(:title, :with => "Cars")
    expect(title).to_not be_nil
  end

  it "shows conversation show page" do
    visit "/conversations"
    click_link("Books")
    expect(current_path).to eq("/conversations/#{@conversation1.id}")
  end

  it "can search for conversations" do
    visit "/conversations"
    within ".search" do
      fill_in(:search, with: "hones")
      click_button("Search")
      expect(page).to_not have_content("Books")
    end
  end

end
