class Character
  attr_reader :name, :hp, :defense
  attr_writer :hp
  def initialize(name: , hp: 100, offense: 50, defense: 40)
    @name = name
    @hp = hp
    @offense = offense 
    @defense = defense
  end

  def attack(enemy)
    damage = (@offense - enemy.defense / 2)
  end
end


