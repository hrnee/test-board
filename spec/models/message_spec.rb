require 'spec_helper'

describe Message do
  it 'does not allow empty title' do
    # expect(Message.new(title: '')).to have(1).errors_on(:title)
    # build(モデル名, title上書き)
    expect(FactoryGirl.build(:message, title: '')).to have(1).errors_on(:title)
  end
  it 'does not allow empty body' do
    # expect(Message.new(body: '')).to have(1).errors_on(:body)
    expect(FactoryGirl.build(:message,body: '')).to have(1).errors_on(:body)
  end
  it 'is valid with title and body' do
    # expect(Message.new(title: 'hoge',body: 'fuga')).to be_valid
    expect(FactoryGirl.build(:message)).to be_valid
  end
end