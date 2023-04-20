require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'is not valid without a title' do
    mark = Blog.create content: 'and some content'
    expect(mark.errors[:title]).to_not be_empty
  end

  it 'is not valid without content' do
    mark2 = Blog.create title: 'here is a title'
    expect(mark.errors[:content]).to_not be_empty
  end
end
