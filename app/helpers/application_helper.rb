module ApplicationHelper
  define_method :time_conversion do |whole|
    midnight = "AM"
    whole_date = whole.to_s( )[0..10]
    date = whole_date.split( '-' )
    fixed_date = ( date[1] + '-' + date[2] + '-' + date[0] ).split( " " )

    whole_time = whole.to_s( )[11..18]
    whole_time = whole_time.split( ":" )
    if whole_time[0].to_i( ) > 13
      midnight = "PM"
      whole_time[0] = whole_time[0].to_i( ) - 12
      whole_time[0] = whole_time[0].to_s
    end
    whole_time = whole_time[0] + ":" + whole_time[1] + ":" + whole_time[2]
    return fixed_date.join( ) + " " + whole_time + midnight
  end
end
