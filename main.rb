require './character.rb'
require './brave.rb'
require './monster.rb'

a = Brave.new
b = Monster.new

def battle(brave:, monster:)
  puts "#{monster.name}があらわれた"

  while true
    brave.attack(monster)

    unless monster.hp <= 0
      monster.attack(brave)
    end

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

battle(brave: a, monster: b)