class Hand
  def initialize
    @cards = ARGV
  end

  def open
    result =
      if royal_straight_flash?
        'ロイヤルストレートフラッシュ'
      elsif straight_flash?
        'ストレートフラッシュ'
      elsif four_card?
        'フォーカード'
      elsif full_house?
        'フルハウス'
      elsif flash?
        'フラッシュ'
      elsif straight?
        'ストレート'
      elsif three_card?
        'スリーカード'
      elsif two_pair?
        'ツーペア'
      elsif one_pair?
        'ワンペア'
      else
        'ノーハンド'
      end

    puts result
  end

  private

    def royal_straight_flash?
      flash? && numbers.sort == [1, 10, 11, 12, 13]
    end

    def straight_flash?
      straight? && flash?
    end

    def four_card?
      numbers_configuration == [4, 1]
    end

    def full_house?
      numbers_configuration == [3, 2]
    end

    def straight?
      numbers.max - numbers.min == 4 || numbers.sort == [1, 10, 11, 12, 13]
    end

    def flash?
      suits_configuration == [5]
    end

    def three_card?
      numbers_configuration == [3, 1, 1]
    end

    def two_pair?
      numbers_configuration == [2, 2, 1]
    end

    def one_pair?
      numbers_configuration == [2, 1, 1, 1]
    end

    def suits_configuration
      suits.group_by(&:itself).map{|key, value| value.count}.sort.reverse
    end

    def numbers_configuration
      numbers.group_by(&:itself).map{|key, value| value.count}.sort.reverse
    end

    def suits
      @cards.map{|card| card[0]}
    end

    def numbers
      @cards.map{|card| card[1..2].to_i}
    end
end

hand = Hand.new
hand.open

