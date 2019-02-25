module Sentences_game

  def Sentences_game.break_words(sentence)
    words_list = sentence.downcase!.split(' ').sort
    return words_list
  end

end
