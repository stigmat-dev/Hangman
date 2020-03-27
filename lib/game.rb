class Game
  TOTAL_ERRORS_ALLOWED = 7

  def initialize(word)
    @letters = word.chars
    @user_guess = []
  end

  def errors
    @user_guess - normalized_letters
  end

  def errors_made
    errors.length
  end

  def errors_allowed
    TOTAL_ERRORS_ALLOWED - errors_made
  end

  def letters_to_guess
    @letters.map do |letter|
      if @user_guess.include?(normalize_letter(letter))
        letter
      else
        nil
      end
    end
  end

  def normalize_letter(letter)
    if letter == "Ё"
      "Е"
    elsif letter == "Й"
      "И"
    else
      letter
    end
  end

  def normalized_letters
    @letters.map do |letter|
      normalize_letter(letter)
    end
  end

  def lost?
    errors_allowed == 0
  end

  def over?
    won? || lost?
  end

  def play!(letter)
    if !over? && !@user_guess.include?(normalize_letter(letter))
      @user_guess << normalize_letter(letter)
    end
  end

  def word
    @letters.join
  end

  def won?
    (normalized_letters - @user_guess).empty?
  end
end
