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
    enemy.hp -= damage
    enemy.hp = 0 if enemy.hp < 0
    #monster,braveクラスで与えたダメージの値を使うために戻り値に設定
    damage
  end
end


