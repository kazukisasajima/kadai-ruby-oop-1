#クラス定義
class Team
  
  #インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw
  
  #インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end  
    
  #勝率を戻り値とするメソッド
  def calc_win_rate
    win.to_f/(win+lose)
  end
    
    
  #チームの成績をターミナルに表示するメソッド
  def show_team_result
    puts "#{self.name}の2020年の成績は #{self.win}勝 #{self.lose}負 #{self.draw}分、勝率は #{calc_win_rate}です。"
  end

end

#インスタンスの生成と、変数への代入
Team_A = Team.new('Giants', 67, 45, 8)
Team_B = Team.new('Tigers', 60, 53, 7)
Team_C = Team.new('Dragons', 60, 55, 5)
Team_D = Team.new('BayStars', 56, 58, 6)
Team_E = Team.new('Carp', 53, 56, 12)
Team_F = Team.new('Swallows', 41, 69, 10)

#インスタンスの使用
Team_A.show_team_result
Team_B.show_team_result
Team_C.show_team_result
Team_D.show_team_result
Team_E.show_team_result
Team_F.show_team_result