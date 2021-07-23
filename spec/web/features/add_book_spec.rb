# spec/web/features/add_book_spec.rb
require 'features_helper'

RSpec.describe 'Add a book' do
  before do
    BookRepository.new.clear
  end

  it 'can create a new book' do
    visit '/books/new'

    within 'form#book-form' do
      fill_in 'Title',  with: 'Example book'
      fill_in 'Author', with: 'Some author'

      click_button 'Create'
    end

    expect(page).to have_current_path('/books')
    expect(page).to have_content('Example book')
  end
end
