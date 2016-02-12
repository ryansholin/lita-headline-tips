require 'spec_helper'

describe Lita::Handlers::HeadlineTips, lita_handler: true do
  it { is_expected.to route('tip!') }
  it { is_expected.to route('tip!') }
  it { is_expected.to route('Tip!') }
  it { is_expected.to route('tip') }

  it 'Headline Tips' do
    send_message('tip!')
    expect(replies.last).to be_a(String)
  end
end
