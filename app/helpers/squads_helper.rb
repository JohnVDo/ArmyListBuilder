module SquadsHelper
  def squads_total_point
    squads_total_point = 0
    @squads.each do |squad|
      squads_total_point += squad.total_point
    end
    return squads_total_point
  end
end
