require 'spec_helper'

describe Clue do
	let!(:user) { FactoryGirl.create(:user)}

	it 'should return false when not answered' do
		clue = FactoryGirl.create(:clue)

		expect(clue.answered?(user)).to be_false
	end

	it 'should return true when answered' do
		clue = FactoryGirl.create(:clue)
		answer = FactoryGirl.create(:answer, clue: clue, user: user)

		expect(clue.answered?(user)).to be_true
	end

end