require "rspec/core/rake_task"

require "json"
require File.join(File.dirname(__FILE__), 'game.rb')


desc "run spec"

RSpec::Core::RakeTask.new(:spec)

namespace :game do
  desc "run the game"
  task :run do
	game = Game.new(3,3)
	game.load([[0, 1, 1], [0, 1, 1], [1, 0, 0]]) 
	turn = game.turn
	puts turn
  end
end

