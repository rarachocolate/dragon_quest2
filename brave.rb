require './character.rb'

class Brave < Character
  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense 
    @defense = defense
  end
  
  def attack(monster)
    puts "#{name}の攻撃！"
    damage = super
    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0
    puts "#{monster.name}に#{damage}のダメージを与えた！"
  end
end