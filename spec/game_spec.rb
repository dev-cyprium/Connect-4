require_relative "../game.rb"

describe Game do
	let(:game) { Game.new }

	describe "#start_game" do

		it "Initializes the rows to 6" do
			game.start_game
			expect(game.rows).to eql 6
		end
		it "Initializes the colums to 7" do
			game.start_game
			expect(game.cols).to eql 7
		end
		it "Initializes the grid to empty" do
			game.start_game
			expect(game.grid).to eql [
				[0,0,0,0,0,0,0],
				[0,0,0,0,0,0,0],
				[0,0,0,0,0,0,0],
				[0,0,0,0,0,0,0],
				[0,0,0,0,0,0,0],
				[0,0,0,0,0,0,0]
			]
		end

		it "Sets the active player to 1" do
			game.start_game
			expect(game.active_player).to eql 1
		end
	end

	describe "#switch_player" do
		context "Last turn was player1's" do
			it "Changes the active player to 2" do
				game.active_player = 1
				game.switch_player
				expect(game.active_player).to eql 2
			end
		end

		context "Last turn was player2's" do
			it "Changes the active player to 1" do
				game.active_player = 2
				game.switch_player
				expect(game.active_player).to eql 1
			end
		end
	end
end