def game_hash 
  game_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
      "Alan Anderson" => {
        :number => 0,
        :shoe => "16",
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
      "Reggie Evans" => {
        :number => 30,
        :shoe => "14",
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
      "Brook Lopez" => {
        :number => 11,
        :shoe => "17",
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },
      "Mason Plumlee" => {
        :number => 1,
        :shoe => "19",
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      "Jason Terry" => {
        :number => 31,
        :shoe => "15",
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    }
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien" => {
        :number => 4,
        :shoe => "18",
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },
      "Bismak Biyombo" => {
        :number => 0,
        :shoe => "16",
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10
      },
      "Ben Gordon" => {
        :number => 8,
        :shoe => "15",
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      "Brendan Haywood" => {
        :number => 33,
        :shoe => "15",
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12
      },
      "DeSagna Diop" => {
        :number => 2,
        :shoe => "14",
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      }
    }
  }
}
end

def num_points_scored(player)
  array = []
  game_hash.each do |location, data|
    data.each do |attribute, values|
        if attribute == :players
          values.each do |name, data|
            data.each do |key, stat|
              if name == player && key == :points
                array << stat
              end
            end
          end
        end
      end
    end
  return array[0]
end

def shoe_size(player)
  array = []
  game_hash.each do |location, data| 
    data.each do |attribute, values|
        if attribute == :players
          values.each do |name, data| 
            data.each do |key, stat| 
              if name == player && key == :shoe
                array << stat.to_i
              end
            end
          end
        end
      end
    end
  return array[0]
end

def team_colors(team)
  if team == "Brooklyn Nets"
    game_hash[:home][:colors]
  elsif team == "Charlotte Hornets"
    game_hash[:away][:colors]
  end
end

def team_names
  array = []
  game_hash.each do |location, data|
    data.each do |attribute, values|
      if attribute == :team_name
        array << values
      end
    end
  end
  return array
end

=begin
def player_numbers(team)
  array = []
  game_hash.each do |location, data| #location
    data.each do |attribute, values| #team
        if attribute == team
          values.each do |name, data| #player
            data.each do |key, stat| #player stats
              if key == :number
              array << stat
              end
            end
          end
        end
     end
    end
  return array
end
=end


=begin
def player_stats(player)
  game_hash.each do |location, data| #location level
    data.each do |attribute, values| #team level
      if attribute == :players
        values.each do |name, data| #player level
          if name == player
            data.each do |key, stat| #player stat level
              #how can I pass each stat, change stat from string to int if necessary, and return hash with only integers?
          
            end 
            return data
          end
        end
      end
    end
  end
end
=end

def player_stats(name)
  game_hash.each do |location, data|
    data[:players].each do |name, value|
        if name == name
        return value
      end
    end
  end
end

def big_shoe_rebounds
  game_hash.each do |location, data| #location
    data.each do |attribute, values| #team
      values.each do |name, data| #player
        if data == shoe_size
          data.max
        end
      end
    end
  end
end