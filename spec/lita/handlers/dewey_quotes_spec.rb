require 'spec_helper'

describe Lita::Handlers::DeweyQuotes, lita_handler: true do
  it { is_expected.to route('quote!') }
  it { is_expected.to route('quote!') }
  it { is_expected.to route('Quote!') }
  it { is_expected.to route('quote') }

  it 'John Dewey quotes' do
    send_message('quote!')
    expect(replies.last).to be_a(String)
  end
end
