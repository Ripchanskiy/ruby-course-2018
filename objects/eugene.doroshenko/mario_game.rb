require_relative 'games_methods'

class MarioGame

  include GamesMethods
  
  FINAL_LVL = 20

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
    if ObjectSpace.each_object(self.class).count == FINAL_LVL
      final_level
    end
  end

end

puts MarioGame.new(5, 18, 3, 4).show_enemy_speed

20.times {MarioGame.new(1, 7, 1, 1)}
