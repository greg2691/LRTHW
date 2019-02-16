def gold_room
  puts "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it
  if choice.include?("0") || choice.include?("1")
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end

def bear_room
  puts "There is a bear here."
  puts "Th bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false
  # creo un loop infinito
  while true
    print "> "
    choice = $stdin.gets.chomp

    # se scelgo "take honey" richiama la funzione dead()
    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    # se scelgo "taunt bear" e bear_moved è uguale a true
    # continuo il loop per il while true a questo punto posso
    # scegliere open door
    # gli si realizzano solo se le richieste restituiscono
    # true
    # in questo caso !bear_moved restituisce true
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    # la prima volta che scelgo "taunt bear" mi cambia
    # il valore all'interno di bear_move in true
    # ragion per cui se richiamo "taunt bear" fra i requisiti
    # c'è choice == "taunt bear" && bear_moved il che causa
    # la chiamata della funzione dead() terminando il gioco
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice = "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start
