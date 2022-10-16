require 'spec_helper'

RSpec.describe 'Testing RSpec' do
    it 'works' do
        expect(10).to eql(10)
    end

    it 'will test fail?' do
        expect(true).to be(true)
    end
end