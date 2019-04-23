# Write your code here!
def game_hash
  my_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black" , "White"],
      :players => {
        "Alan Anderson" => {
          :number => "0",
          :shoe => "16",
          :points => "22",
          :rebounds => "12",
          :assists => "12",
          :steals => "3",
          :blocks => "1",
          :slam_dunks => "1"
        },
        "Reggie Evans" => {
          :number => "30",
          :shoe => "14",
          :points => "12",
          :rebounds => "12",
          :assists => "12",
          :steals => "12",
          :blocks => "12",
          :slam_dunks => "7"
          
        },
        "Brook Lopez" => {
          :number => "11",
          :shoe => "17",
          :points => "17",
          :rebounds => "19",
          :assists => "10",
          :steals => "3",
          :blocks => "1",
          :slam_dunks => "15"
          
        },
        "Mason Plumlee" => {
          :number => "1",
          :shoe => "19",
          :points => "26",
          :rebounds => "12",
          :assists => "6",
          :steals => "3",
          :blocks => "8",
          :slam_dunks => "5"
        },
        "Jason Terry" => {
          :number => "31",
          :shoe => "15",
          :points => "19",
          :rebounds => "2",
          :assists => "2",
          :steals => "4",
          :blocks => "11",
          :slam_dunks => "1"
        }
      }
    },
      
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise" , "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => "4",
          :shoe => "18",
          :points => "10",
          :rebounds => "1",
          :assists => "1",
          :steals => "2",
          :blocks => "7",
          :slam_dunks => "2"
          
        },
        "Bismak Biyombo" => {
          :number => "0",
          :shoe => "16",
          :points => "12",
          :rebounds => "4",
          :assists => "7",
          :steals => "7",
          :blocks => "15",
          :slam_dunks => "10"
          
        },
        "DeSagna Diop" => {
          :number => "2",
          :shoe => "14",
          :points => "24",
          :rebounds => "12",
          :assists => "12",
          :steals => "4",
          :blocks => "5",
          :slam_dunks => "5"
          
        },
        "Ben Gordon" => {
          :number => "8",
          :shoe => "15",
          :points => "33",
          :rebounds => "3",
          :assists => "2",
          :steals => "1",
          :blocks => "1",
          :slam_dunks => "0"
        },
        "Brendan Haywood" => {
          :number => "33",
          :shoe => "15",
          :points => "6",
          :rebounds => "12",
          :assists => "12",
          :steals => "22",
          :blocks => "5",
          :slam_dunks => "12"
        }
      }
    }
  }
end

def num_points_scored(player)
  a = 0
  if game_hash[:away][:players].include?(player)
    a =  game_hash[:away][:players][player][:points]
  elsif game_hash[:home][:players].include?(player)
    a = game_hash[:home][:players][player][:points]
  else
    puts "Player not found"
  end
  
  #puts a
  #puts a.to_i
  b = a.to_i
  #puts "#{b} is being returned?"
  return b
end

def shoe_size(player)
  a = 0
  
  if game_hash[:away][:players].include?(player)
    a = game_hash[:away][:players][player][:shoe]
  elsif game_hash[:home][:players].include?(player)
    a = game_hash[:home][:players][player][:shoe]
  else
    puts "Player not found"
  end
  
  b = a.to_i
  return b
end

def team_colors(team)
  if game_hash[:away][:team_name] == team
    return game_hash[:away][:colors]
  else
    return game_hash[:home][:colors]
  end
end

def team_names
  return [game_hash[:home][:team_name] , game_hash[:away][:team_name]]
end

def player_numbers(team)
  a = []
  
  if game_hash[:home][:team_name] == team
      game_hash[:home][:players].each do |player , key|
        key.each do |subKey , val|
          if subKey == :number
            a.push(val.to_i)
          end
        end
      end
      
  elsif game_hash[:away][:team_name] == team
    game_hash[:away][:players].each do |player, key|
      key.each do |subKey , val|
        if subKey == :number
          a.push(val.to_i)
        end
      end
    end
  end
  return a
end

def player_stats(player)
  a = {}
  if game_hash[:home][:players].include?(player)
    #puts game_hash[:home][:players][player]
    game_hash[:home][:players][player].each do |key , val|
      a[key] = val.to_i
    end
  
  elsif game_hash[:away][:players].include?(player)
    #puts game_hash[:away][:players][player]
    game_hash[:away][:players][player].each do |key , val|
      a[key] = val.to_i
    end
    
  else
    puts "Not found brah"
  end
  
  return a
end


def big_shoe_rebounds
  a = 0   # this is the shoe size
  b = ""  # this is the players name
  game_hash[:home][:players].each do |player , info|
    info.each do |key , val|
      if key == :shoe
        if val.to_i > a
          a = val.to_i
          b = player
        end
      end
    end
  end
  
  game_hash[:away][:players].each do|player , info|
    info.each do |key , val|
      if key == :shoe
        if val.to_i > a
          a = val.to_i
          b = player
        end
      end
    end
  end
  
  if game_hash[:home][:players].include?(b)
    return game_hash[:home][:players][b][:rebounds].to_i
  elsif game_hash[:home][:players].include(b)
    return game_hash[:home][:players][b][:rebounds].to_i
  else
    "B ain't here"
  end
  
end


