#!/bin/env ruby
# encoding: utf-8

# a simple script to get all answers for a member

name = "Jan"
member_id = Member.where(email: 'jan.pieper@adcloud.com').first!.id
sql = 'SELECT questions.section, questions.text as question, answers.text as answer FROM "answers" INNER JOIN "questions" ON "questions"."id" = "answers"."question_id" WHERE "answers"."for_member_id" = ' + member_id.to_s + ' ORDER BY questions.created_at DESC'
answers = Array.new
ActiveRecord::Base.connection.execute(sql).each{ |t| answers << t}

results = Hash.new
answers.each do |a| 
  #create sections
  if results[a["section"]] == nil 
    results[a["section"]] = Hash.new 
  end 
  #create question and answer choices
  if results[a["section"]][a["question"]] == nil 
    results[a["section"]][a["question"]] = {"Sehr zutreffend" => 0, "Eher zutreffend" => 0, "Ein wenig zutreffend" => 0, "Eher nicht zutreffend" => 0, "Nicht beantwortet" => 0}
  end 
  #increment multiplechoice anwser
  if results[a["section"]][a["question"]][a["answer"]] != nil 
    results[a["section"]][a["question"]][a["answer"]] += 1
  else
    #include free comment
    if a["question"] == '<freetext>' && a["answer"] != nil && a["answer"] != ""
      if results[a["section"]][a["question"]]['<freetext>'] == nil
        results[a["section"]][a["question"]]['<freetext>'] = Array.new
      end
      results[a["section"]][a["question"]]['<freetext>'] << a["answer"]
    #count as not answered
    else
      results[a["section"]][a["question"]]["Nicht beantwortet"] += 1
    end
  end
end


#puts 'Results for ' + name + ';;;;'
#puts 'SECTION; NAME; QUESTION; Sehr zutreffend; Eher zutreffend; Ein wenig zutreffend; Eher nicht zutreffend; Nicht beantwortet'


results.keys.each do |section|
  results[section].keys.each do |question|
    if section != nil && name != nil && question != nil
      print section + "; " + name + "; "+ question + "; "
      results[section][question].keys.each do |answer|
      #print answer.to_s + ":" + results[section][question][answer].to_s + " ; "
        if results[section][question][answer] != nil && answer != nil
          #print answer
          print answer.to_s + ":" + results[section][question][answer].to_s + " ; "
        end
      end
      puts ""
    end
  end
end
