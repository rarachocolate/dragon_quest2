require './character.rb'

class Brave < Character
  def initialize(name: "勇者", hp: 100, offense: 100, defense: 100)
    @name = name
    @hp = hp
    @offense = offense 
    @defense = defense
  end
  
  def attack(enemy)
    damage = super
    puts "#{name}の攻撃！"
    puts "#{enemy.name}に#{damage}のダメージを与えた！"
  end
end