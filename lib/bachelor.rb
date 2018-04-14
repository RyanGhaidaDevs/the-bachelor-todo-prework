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


  data.each do |season, info|
    info.each do |contestants|
      contestants.each do |key, value|
        if value == hometown
          counter +=1
        end
      end
    end
  end
return counter
end

def get_occupation(data, hometown)

  data.each do |season, info|
    info.each do |contestants|
      contestants.each do |key, value|
        if value == hometown
          return contestants["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, given_season)

  age_arr = []

  data[given_season].each do |info|
      info.each do |key, value|
        if key == "age"
          age_arr << value
        end
      end
    end
  
 arr = age_arr.collect { |x| x.to_f }

 return (arr.inject(0, &:+)/arr.length).round

end
