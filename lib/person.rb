class Person 
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account=(value)
    @bank_account = value
  end

  def happiness=(value)
    @happiness = if value > 10
      10
    elsif value < 0
      0
    else
      value
    end
  end

  def hygiene=(value)
    @hygiene = if value > 10
      10
    elsif value < 0
      0
    else
      value
    end
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @friend = Person.new(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      friend.happiness -= 2
      self.happiness -=2
      "blah blah partisan blah lobbyist"
    when "weather"
      friend.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end 
  end
end
