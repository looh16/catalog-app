class App
  def start_app
    output = gets.chomp.to_i
    case output
    when 13
      exit
    end
  end
end
