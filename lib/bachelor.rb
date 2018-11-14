def get_first_name_of_season_winner(data, season)
  data[season].each do |info|
    if (info.values).include?("Winner")
      return (info["name"].split)[0]
    end 
  end 
end

def get_contestant_name(data, occupation)
  data.each do |season, players|
    players.each do |info|
      if (info.values).include?(occupation)
        return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, players|
    players.each do |info|
      if (info.values).include?(hometown)
        counter += 1 
      end
    end
  end
  return counter
end  

def get_occupation(data, hometown)
  data.each do |season, players|
    players.each do |info|
      if (info.values).include?(hometown)
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  a = 0 
  b = 0 
  data[season].each do |info|
    a += info["age"].to_f
    b += 1 
  end 
  return a/b.to_i
end