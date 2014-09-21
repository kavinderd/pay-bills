require 'yaml'
module PayBills
  extend self
  DIR_PATH  = File.join(Dir.home, "pay_bills")
  FILE_PATH = File.join(DIR_PATH, "config.yml")
  
  def pay_bills
    config = get_config
    p config
    abort unless config["bills"] #TODO: Handle this better
    config["bills"].each do |service, site|
      system("open", site)
    end  
  end

  def edit_bills
    system("vim", FILE_PATH)
  end

  private 

  def set_config
    puts "seting config"
    Dir.mkdir(DIR_PATH) unless Dir.exists?(DIR_PATH)
    File.open(FILE_PATH, "w+") do |f|
      f.write "bills:\n"
    end
  end

  def get_config
    if File.exists?(FILE_PATH)
      YAML.load(File.open(FILE_PATH))
    else
      set_config
      self.get_config
    end
  end
end
