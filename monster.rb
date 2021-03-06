require './character.rb'

class Monster < Character
  def initialize(name: "モンスター", hp: 100, offense: 100, defense: 100)
    @name = name
    @hp = hp
    @offense = offense 
    @defense = defense
  end

  def attack(enemy)
    damage = super
    puts "#{name}の攻撃！"
    puts "#{enemy.name}は#{damage}のダメージを受けた！"
  end
end