require 'spec_helper'

describe Lita::Handlers::YodaQuotes, lita_handler: true do
  it { is_expected.to route('Yoda quote!') }
  it { is_expected.to route('yoda quote!') }
  it { is_expected.to route('Yoda Quote!') }
  it { is_expected.to route('Yoda quote') }

  it 'should response like master yoda' do
    send_message('Yoda quote!')
    expect(replies.last).to be_a(String)
  end
end
