name = "Alfonz"
member_id = Member.where(email: 'alfonz.borsos@adcloud.com').first!.id
sql = 'SELECT questions.section, questions.text as question, answers.text as answer FROM "answers" INNER JOIN "questions" ON "questions"."id" = "answers"."question_id" WHERE "answers"."for_member_id" = ' + member_id.to_s + ' ORDER BY questions.created_at DESC'
answers = Array.new
ActiveRecord::Base.connection.execute(sql).each{ |t| answers << t}

results = Hash.new
answers.each do |a| 
  #create sections
  if results[a["section"]] == nil 
    results[a["section"]] = Hash.new 
  end 
  #create questions
  if results[a["section"]][a["question"]] == nil 
    results[a["section"]][a["question"]] = Hash.new 
  end 
  #create answer choices
  if results[a["section"]][a["question"]][a["answer"]] == nil 
    results[a["section"]][a["question"]] = {"Sehr zutreffend" => 0, "Eher zutreffend" => 0, "Ein wenig zutreffend" => 0, "Eher nicht zutreffend" => 0, "Nicht beantwortet" => 0}
  end 
  if results[a["section"]][a["question"]][a["answer"]] != nil 
    results[a["section"]][a["question"]][a["answer"]] = results[a["section"]][a["question"]][a["answer"]] +1 
  else 
    results[a["section"]][a["question"]]["Nicht beantwortet"] = results[a["section"]][a["question"]]["Nicht beantwortet"] + 1
  end
end


puts 'Results for ' + name 
puts '========'

results.keys.sort.each do |section|
  puts section + ":"
  results[section].keys.sort.each do |question|
    print " " + name + question + ": "
    results[section][question].keys.each do |answer|
      print answer.to_s + ":" + results[section][question][answer].to_s + " | "
    end
    puts ""
  end
end