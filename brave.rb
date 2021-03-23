require './character.rb'

class Brave < Character
  def attack(monster)
    damage = calculate_damage(monster)
    puts "#{name}の攻撃！"
    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0
    puts "#{monster.name}に#{damage}のダメージを与えた！"
  end
end