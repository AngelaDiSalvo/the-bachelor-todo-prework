require "pry"

def get_first_name_of_season_winner(data, season)
  answer = []
  data.each do |seas, cont_stats|
    if seas == season
      cont_stats.each do |item|
        if item.values.last == "Winner"
          answer << item.values[0].split[0]
        end
      end    
    end
  end
  answer[0]
end

def get_contestant_name(data, occupation)
  answer = []
  data.each do |seas, cont_stats|
      cont_stats.each do |item|
        if item.values[3] == occupation
          answer << item.values[0]
        end
      end    
    end
  answer[0]
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seas, cont_stats|
      cont_stats.each do |item| 
        if item.values[2] == hometown
          count +=1
        end
      end    
    end
  count
end

def get_occupation(data, hometown)
  answer = []
  data.each do |seas, cont_stats|
      cont_stats.each do |item| 
        if item.values[2] == hometown
          answer << item.values[3]
        end
      end    
    end
  answer[0]
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |seas, cont_stats|
    if seas == season
      cont_stats.each do |item|
        ages << item.values[1].to_f
      end    
    end
  end
  total = ages.reduce(:+)
  len = ages.length.to_f
  (total/len).round
end







