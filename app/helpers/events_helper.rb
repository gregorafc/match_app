module EventsHelper

  def match_field_data(event)
    "#{event.field.sportcenter.name} - #{event.field.name}"
  end

  def field_datas
    lambda { |field| "#{field.sportcenter.name} - #{field.name}"}
  end

end
