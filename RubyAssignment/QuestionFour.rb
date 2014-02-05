class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end
#A list set for finding the exact bool.
@compare={"rr"=>true, "rs"=>true, "rp"=>false,
   "ss"=>true, "sp"=>true, "sr"=>false,
   "rr"=>true, "rs"=>true, "rp"=>false}
def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless /[rps]/ === game[0][1].downcase &&  /[rps]/ === game[1][1].downcase #raise error if r/p/s is not the second element.
  if ifGreater?(game[0][1].downcase, game[1][1].downcase)
    return game[0]
  else
    return game[1]
  end
end
#A method for checking whether move 1 is greater.
def ifGreater?(move1, move2)
  newString=move1+move2
  return @compare[newString] #find the bool through the list
end

puts rps_game_winner([ ["Armando", "s"], ["Dave", "s"]])
teams=[
        [
            [ ["Armando", "P"], ["Dave", "S"] ],
            [ ["Richard", "R"],  ["Michael", "S"] ],
        ],
        [
            [ ["Allen", "S"], ["Omer", "P"] ],
            [ ["David E.", "R"], ["Richard X.", "P"] ]
        ]
      ]
# Using recursion.
def rps_tournament_winner(tournament)
  winner=tournament_winner(tournament)

  return winner
end
def tournament_winner(tournament)
  if tournament[0].is_a?(String) # keep running util find the first element in the list is a string, then return, back to the previous method.
    #puts tournament
    return
  end
  winner0=tournament_winner(tournament[0])
  if winner0.is_a?(Array) # If the first winner has already been gotten, enter into the other branch to get the second winner.
    winners=[winner0, tournament_winner(tournament[1])]
    return rps_game_winner(winners) # Call the method to compare two winners, get the last winner.
  end

  return rps_game_winner(tournament)
end

puts rps_tournament_winner(teams)
