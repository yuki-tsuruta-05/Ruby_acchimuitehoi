lose_count = 0
draw_count = 0

puts "あっち向いてホイで勝負"
puts "中断する時は「Ctrl＋C」を押してください"
puts "-------------------------------"

loop do
  puts "最初はグージャンケン....."
  puts "[1]グー、[2]チョキ、[3]パーから選ぶ"
  
  player_hands = gets.to_i
  jankens = [nil,"グー","チョキ","パー"]
  program_hands = jankens[rand(1..3)]
  
  until player_hands == 1 || player_hands == 2 || player_hands == 3 do
    puts "[1]グー、[2]チョキ、[3]パーから選んでください"
    player_hands = gets.to_i
  end  
  
  puts "あなたの手は#{jankens[player_hands]}"
  puts "相手の手は#{program_hands}"
  
  if
    jankens[player_hands] == program_hands
    
    case_pattern = "draw"
    
    puts "あいこで...."
    next
    
  elsif 
    (jankens[player_hands] == "グー" && program_hands == "チョキ") || 
    (jankens[player_hands] == "チョキ" && program_hands == "パー") ||
    (jankens[player_hands] == "パー" && program_hands == "グー")
        
    case_pattern = "win"  

  else 
    case_pattern = "lose"
  
  end
  
  case case_pattern
  
  when "win"
    puts "ジャンケンに勝ちました！"
    puts "指を指す方向を選んでください！[1]上、[2]右、[3]下、[4]左"
  
    player_choice = gets.to_i
    direction = [nil,"上","右","下","左"]
    program_choice = direction[rand(1..4)]
    
    until player_choice == 1 || player_choice == 2 ||player_choice == 3 ||player_choice == 4 do
      puts "[1]上、[2]右、[3]下、[4]左から選んでください"
      player_choice = gets.to_i
    end  

      puts "あっち向いてホイ！" 
      puts "(あなたが差した方向は#{direction[player_choice]})"
      puts "(相手が向いた方向は#{program_choice})"
      
      if
        direction[player_choice] == program_choice
        puts "あなたの勝利です！"
        puts "あなたが勝利するまでにプログラムに#{draw_count}回引き分けて、#{lose_count}回敗北しました。"
        break
      
      else
        direction[player_choice] != program_choice
        puts "引き分けです"
        puts "-------------------------------"
        draw_count += 1
      end
    
  when "lose"  
    puts "ジャンケンに負けました"
    puts "顔を向ける方を選んでください！[1]上、[2]右、[3]下、[4]左"

    player_choice = gets.to_i
    direction = [nil,"上","右","下","左"]
    program_choice = direction[rand(1..4)]  

    until player_choice == 1 || player_choice == 2 ||player_choice == 3 ||player_choice == 4 do
      puts "[1]上、[2]右、[3]下、[4]左から選んでください"
      player_choice = gets.to_i
    end      
      puts "あっち向いてホイ！"
      puts "あなたが向いた方向は#{direction[player_choice]}"
      puts "相手が差した方向は#{program_choice}"
  
      if
        direction[player_choice] == program_choice
        puts "あなたの敗北です..."
        puts "-------------------------------"        
        lose_count += 1
      
      else
        direction[player_choice] != program_choice
        puts "引き分けです"
        puts "-------------------------------"
        draw_count += 1
      end
  
  
  end
end