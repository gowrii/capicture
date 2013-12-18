describe Board do
  it 'should only allow one board per game per user' do
    board = FactoryGirl.create(:board)
    board2 = FactoryGirl.build(:board, user: board.user, game: board.game)

    expect(board2).to be_invalid
  end
end