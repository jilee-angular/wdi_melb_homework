require 'fileutils'

gumballs = "Regina Rauch,Jam Creencia,Lauren Smolenski,Matt Swann,Robert Will,Ji Lee,Andre Vidic,Susan Abraham,Tim Grut,Taymor Mohseni,Joshua Richardson,Vasko Traikovski, Michael Kempster".split(',')

gumballs.each do |gumball|
 folder_name = gumball.gsub(' ','_').downcase
  FileUtils.mkdir folder_name
  FileUtils.chdir folder_name do
    FileUtils.touch '.gitkeep'
  end
end