require "csv"

loop do

  puts "1(新規でメモを作成) 2(既存のメモ編集する)"
   
  memo_type = gets.to_i
  
  if memo_type == 1
    puts "新規メモの名前(拡張子は除く)は？"
    file_name = gets.chomp
      
    puts "メモの内容を記述してください。"
    puts "完了後「Ctrl+D」を押してください"
    content = $stdin.readlines(chomp: true)
    
    CSV.open("#{file_name}.csv", "w") do |csv|
    csv << ["#{content}"]
  
  end
  break
  
  elsif memo_type == 2
     puts "追記するメモの名前(拡張子は除く)は？"
     file_name = gets.chomp
     
     puts "追記する内容を記述してください。"
     puts "完了後「Ctrl+D」を押してください"
     content = $stdin.readlines(chomp: true)
     
     CSV.open("#{file_name}.csv" ,"a") do |csv|
     csv << ["#{content}"]
  
  end
  break
  
  else
    puts "1か2を入力してください。"
  
  end
end