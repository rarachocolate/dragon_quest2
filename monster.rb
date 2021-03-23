require './character.rb'

class Monster < Character
  def attack(brave)
    damage = calculate_damage(brave)
    puts "#{name}の攻撃！"
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0
    puts "#{brave.name}は#{damage}のダメージを受けた！"
  end
end