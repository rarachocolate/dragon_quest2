require './character.rb'

class Monster < Character
  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense 
    @defense = defense
  end

  def attack(brave)
    puts "#{name}の攻撃！"
    damage = super
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0
    puts "#{brave.name}は#{damage}のダメージを受けた！"
  end
end