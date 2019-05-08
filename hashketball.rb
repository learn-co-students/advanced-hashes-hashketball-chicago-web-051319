require 'pry'

def game_hash
hash = {
  :home => {:players => {"Alan Anderson" => {:Number => 0, :Shoe => 16, :Points => 22, :Rebounds => 12, :Assists => 12, :Steals => 3, :Blocks => 1, :slam_dunks => 1},
"Reggie Evans" => {:Number => 30, :Shoe => 14, :Points => 12, :Rebounds => 12, :Assists => 12, :Steals => 12, :Blocks => 12, :slam_dunks => 7},
"Brook Lopez" => {:Number => 11, :Shoe => 17, :Points => 17, :Rebounds => 19, :Assists => 10, :Steals => 3, :Blocks => 1, :slam_dunks => 15},
"Mason Plumlee" => {:Number => 1, :Shoe => 19, :Points => 26, :Rebounds => 12, :Assists => 6, :Steals => 3, :Blocks => 8, :slam_dunks => 5},
"Jason Terry" => {:Number => 31, :Shoe => 15, :Points => 19, :Rebounds => 2, :Assists => 2, :Steals => 4, :Blocks => 11, :slam_dunks => 1}
  }, :team_name => ["Brooklyn Nets"], :colors => ["Black", "White"]
  },
  :away => {:players => {
      "Jeff Adrien" => {:Number => 4, :Shoe => 18, :Points => 10, :Rebounds => 1, :Assists => 1, :Steals => 2, :Blocks => 7, :slam_dunks => 2},
  "Bismack Biyombo" => {:Number => 0, :Shoe => 16, :Points => 12, :Rebounds => 4, :Assists => 7, :Steals => 7, :Blocks => 15, :slam_dunks => 10},
  "DeSagna Diop" => {:Number => 2, :Shoe => 14, :Points => 24, :Rebounds => 12, :Assists => 12, :Steals => 4, :Blocks => 5, :slam_dunks => 5},
  "Ben Gordon" => {:Number => 8, :Shoe => 15, :Points => 33, :Rebounds => 3, :Assists => 2, :Steals => 1, :Blocks => 1, :slam_dunks => 0},
  "Brendan Haywood" => {:Number => 33, :Shoe => 15, :Points => 6, :Rebounds => 12, :Assists => 12, :Steals => 22, :Blocks => 5, :slam_dunks => 12}
}, :team_name => ["Charlotte Hornets"], :colors => ["Turquoise", "Purple"]
    }
  }
end


def num_points_scored(name)
  point = []
  hash = game_hash
  hash.each do |location, team_data|
    team_data.each do |attribute, data|
      data.each do |data_item|
        if data_item.include?(name)
        point = data_item[1][:Points]
        end
      end
    end
  end
  return point
end


def shoe_size(name)
  size = []
  hash = game_hash
  hash.each do |location, team_data|
    team_data.each do |attribute, data|
      data.each do |data_item|
        if data_item.include?(name)
        size = data_item[1][:Shoe]
        end
      end
    end
  end
  return size
end


def team_colors(name)
  color = []
  hash = game_hash
  hash.each do |location, team_data|
    binding.pry
    if hash[location].values.include?(hash[location][:team_name])
      team_data.each do |attribute, detail|
        if attribute == :colors
          color.push(detail)
        end
      end
    end
  end
  return color
end
