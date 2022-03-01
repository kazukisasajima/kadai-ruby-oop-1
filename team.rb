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
team_A = Team.new('Giants', 67, 45, 8)
team_B = Team.new('Tigers', 60, 53, 7)
team_C = Team.new('Dragons', 60, 55, 5)
team_D = Team.new('BayStars', 56, 58, 6)
team_E = Team.new('Carp', 53, 56, 12)
team_F = Team.new('Swallows', 41, 69, 10)

#インスタンスの使用
team_A.show_team_result
team_B.show_team_result
team_C.show_team_result
team_D.show_team_result
team_E.show_team_result
team_F.show_team_result