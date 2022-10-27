require 'json'

class Listlabels
  def list_all_labels
    if File.exist?('./storage/label.json')

      if File.empty?('./storage/label.json')
        puts 'Please the label title and color'
      else
        labels = JSON.parse(File.read('./storage/label.json'))

        labels.each do |label|
          p ' ------------------------------------------------------------------------------ '
          puts " #{label['title']}, #{label['color']}"
        end
      end
    else
      puts 'There is no label yet, please a label'
    end
  end
end
