require './character.rb'
require './brave.rb'
require './monster.rb'


def battle
  brave = Brave.new(name: "勇者", hp: 100, offense: 100, defense: 100)
  monster = Monster.new(name: "モンスター", hp: 100, offense: 100, defense: 100)

  puts "#{monster.name}があらわれた"

  while true
    brave.attack(monster)

    monster.attack(brave) if monster.hp > 0

    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT

    break if monster.hp == 0 || brave.hp == 0
    
  end

  puts "#{brave.name}はしんでしまった!" if brave.hp == 0
  puts "#{monster.name}をやっつけた" if monster.hp == 0
end

battle