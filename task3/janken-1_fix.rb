class Janken_acchimuitehoi_game
  $user_winner_or_loser = 0 #ユーザーの勝敗状況を、勝ち->"win"、あいこ->"equal"、負け->"lose"で管理

  def janken_method
    puts "じゃんけん..."
    puts "1(✊を出す) 2(✌️ を出す) 3(✋を出す) 0(やめる)"
    $user_janken_type = gets.chomp.to_s
    enemy_janken_type = Random.rand(1..3).to_s

    janken_types = {"1"=>"✊","2"=>"✌️","3"=>"✋"}
		
    if $user_janken_type == "1" || $user_janken_type == "2" || $user_janken_type == "3"
      puts "ポンッッ!!"
      puts "----------------------"
      puts "自分は#{janken_types[$user_janken_type]} を出した!!"
      puts "相手は#{janken_types[enemy_janken_type]} を出した!!"
      puts "----------------------"

      if ($user_janken_type == "1" && enemy_janken_type == "2") || ($user_janken_type == "2" && enemy_janken_type == "3") || ($user_janken_type == "3" && enemy_janken_type == "1")
        $user_winner_or_loser = "win"
      elsif ($user_janken_type == "1" && enemy_janken_type == "3") || ($user_janken_type == "2" && enemy_janken_type == "1") || ($user_janken_type == "3" && enemy_janken_type == "2")
        $user_winner_or_loser = "lose"
      elsif $user_janken_type == enemy_janken_type
        $user_winner_or_loser = "equal"
      end
      janken_winner_or_loser_result = {"win"=>"あなたはじゃんけんに勝った!","lose"=>"あなたはじゃんけんに負けた!","equal"=>"あいこだった!もう一度..."}
      puts janken_winner_or_loser_result[$user_winner_or_loser]
    elsif $user_janken_type == "0"
      puts "じゃんけんアプリを終了します"
    else
      puts "無効な入力です"
      puts "もう一度やり直してください"
    end
  end

  #じゃんけんがあいこだった場合の分岐
  def janken_method_equal
    puts "あいこで..."
    puts "1(✊を出す) 2(✌️ を出す) 3(✋を出す) 0(やらない)"
    $user_janken_type = gets.chomp.to_s
    enemy_janken_type = Random.rand(1..3).to_s

    janken_types = {"1"=>"✊","2"=>"✌️","3"=>"✋"}
		
    if $user_janken_type == "1" || $user_janken_type == "2" || $user_janken_type == "3"
      puts "ショッッ!!"
      puts "----------------------"
      puts "自分は#{janken_types[$user_janken_type]} を出した!!"
      puts "相手は#{janken_types[enemy_janken_type]} を出した!!"
      puts "----------------------"

      if ($user_janken_type == "1" && enemy_janken_type == "2") || ($user_janken_type == "2" && enemy_janken_type == "3") || ($user_janken_type == "3" && enemy_janken_type == "1")
        $user_winner_or_loser = "win"
      elsif ($user_janken_type == "1" && enemy_janken_type == "3") || ($user_janken_type == "2" && enemy_janken_type == "1") || ($user_janken_type == "3" && enemy_janken_type == "2")
        $user_winner_or_loser = "lose"
      elsif $user_janken_type == enemy_janken_type
        $user_winner_or_loser = "equal"
      end
      janken_winner_or_loser_result = {"win"=>"あなたはじゃんけんに勝った!","lose"=>"あなたはじゃんけんに負けた!","equal"=>"あいこだった!もう一度..."}
      puts janken_winner_or_loser_result[$user_winner_or_loser]
    elsif $user_janken_type == "0"
      puts "じゃんけんアプリを終了します"
    else
      puts "無効な入力です"
      puts "もう一度やり直してください"
    end
  end



  $acchimuitehoi_continue = true #じゃんけんへ移行->true、あっち向いてホイ決着->false

  def acchimuitehoi_method
    acchimuitehoi_point_result = {"1"=>"上を指した!","2"=>"右を指した!","3"=>"下を指した!","4"=>"左を指した!"}
    acchimuitehoi_direction_result = {"1"=>"上を向いた!","2"=>"右を向いた!","3"=>"下を向いた!","4"=>"左を向いた!"}	

    puts "あっち向いて..."
    if $user_winner_or_loser == "win"
      puts "1(上を指す) 2(右を指す) 3(下を指す) 4(左を指す)"
      $user_acchimuitehoi_point = gets.chomp.to_s
      enemy_acchimuitehoi_direction = Random.rand(1..4).to_s
	
      if $user_acchimuitehoi_point == "1" || $user_acchimuitehoi_point == "2" || $user_acchimuitehoi_point == "3" || $user_acchimuitehoi_point == "4"
        puts "ホイッッ!!"
        puts "----------------------"
        puts "自分は#{acchimuitehoi_point_result[$user_acchimuitehoi_point]}"
        puts "相手は#{acchimuitehoi_direction_result[enemy_acchimuitehoi_direction]}"
        puts "----------------------"
	
        if $user_acchimuitehoi_point == enemy_acchimuitehoi_direction
          puts "やった!!あなたはあっち向いてホイに勝った!!"
          $acchimuitehoi_continue = false
        else
          puts "残念!相手は違う方向を向いた!!"
          $acchimuitehoi_continue = true
        end
      else
        puts "無効な入力です"
        puts "もう一度やり直してください"
      end
	
    elsif $user_winner_or_loser == "lose"
      puts "1(上を向く) 2(右を向く) 3(下を向く) 4(左を向く)"
      $user_acchimuitehoi_direction = gets.chomp.to_s
      enemy_acchimuitehoi_point = Random.rand(1..4).to_s
	
      if $user_acchimuitehoi_direction == "1" || $user_acchimuitehoi_direction == "2" || $user_acchimuitehoi_direction == "3" || $user_acchimuitehoi_direction == "4"
        puts "ホイッッ!!"
        puts "----------------------"
        puts "自分は#{acchimuitehoi_direction_result[$user_acchimuitehoi_direction]}"
        puts "相手は#{acchimuitehoi_point_result[enemy_acchimuitehoi_point]}"
        puts "----------------------"
	
        if $user_acchimuitehoi_direction == enemy_acchimuitehoi_point
          puts "残念!!あなたはあっち向いてホイに負けた!!"
          $acchimuitehoi_continue = false
        else
          puts "セーフ!!相手は違う方向を指した!!"
          $acchimuitehoi_continue = true
        end
      else
        puts "無効な入力です"
        puts "もう一度やり直してください"
      end
    end
  end
end


janken = Janken_acchimuitehoi_game.new()
acchimuitehoi = Janken_acchimuitehoi_game.new()


while $acchimuitehoi_continue == true do
  janken.janken_method #じゃんけん メソッド起動
  while $user_winner_or_loser == "equal" do
    if $user_janken_type == "1" || $user_janken_type == "2" || $user_janken_type == "3"
      janken.janken_method_equal
    else
      break
    end
  end

  if $user_janken_type == "1" || $user_janken_type == "2" || $user_janken_type == "3"	
    acchimuitehoi.acchimuitehoi_method #あっち向いてホイ メソッド起動
    unless $user_acchimuitehoi_point == "1" || $user_acchimuitehoi_point == "2" || $user_acchimuitehoi_point == "3" || $user_acchimuitehoi_point == "4" ||
           $user_acchimuitehoi_direction == "1" || $user_acchimuitehoi_direction == "2" || $user_acchimuitehoi_direction == "3" || $user_acchimuitehoi_direction == "4"
      break
    end
  else
    break
  end

end