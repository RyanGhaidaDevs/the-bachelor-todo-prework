def get_first_name_of_season_winner(data, season)
name = ""
  data[season].each do |contestants|

      contestants.each do |key, value|
        if value == "Winner"
          name = contestants["name"]

          return name.split(" ").first

        end
      end

  end

end

def get_contestant_name(data, occupation)

  data.each do |season, info|

    info.each do |contestant|

      contestant.each do |key, value|

      if value == occupation

        return contestant["name"]

      end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
counter  = 0

  while counter <30 
  data.each do |season, info|
    info.each do |contestants|
      contestants.each do |key, value|
        if value == hometown
          counter +=1
        end
        return counter
      end
    end
  end

end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
