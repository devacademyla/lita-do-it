require 'spec_helper'

describe Lita::Handlers::DoIt, lita_handler: true do
  it { is_expected.to route('do it').to(:doit) }
  it { is_expected.to route('JUST DO IT').to(:doit) }
  # Don't let your dreams be dreams.
  # Yesterday, you said tomorrow.
  it { is_expected.to route('SO, JUST... DO IT').to(:doit) }
  it 'motivates with a shia' do
    send_message('do it')
    expect(Lita::Handlers::DoIt::SHIAS).to include(replies.last)
  end
end
