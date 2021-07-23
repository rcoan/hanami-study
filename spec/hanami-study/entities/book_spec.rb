require 'features_helper'

RSpec.describe Book, type: :entity do
  it 'can be initialized with attributes' do
    book = Book.new(title: 'Refactoring', author: 'Martin Fowler')
    expect(book.title).to eq('Refactoring')
    expect(book.author).to eq('Martin Fowler')
  end
end
