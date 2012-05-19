#internal project
def helpers
["um(variable)","fonts","colors","alert(message)","q","log(value,message)"]
end  

# internal project
def um(variable); variable.public_methods.select {|k|  k == k.downcase} - " ".methods ; end

def useful_methods(variable); variable.public_methods.select {|k|  k == k.downcase} - " ".methods ; end

#internal project
def q; exit; end

#internal project
# add $debug=true in app_delegate.rb
def log(value,message="")
$stdout.puts "#{message} #{value}" if $debug
end 

# internal project
def colors
#  UIColor.public_methods.select {|k| k.include? 'Color' }
 [:blackColor, :whiteColor, :grayColor, :lightGrayColor, :darkGrayColor, :redColor, :greenColor, :blueColor, :cyanColor, :magentaColor, :yellowColor, :orangeColor, :purpleColor, :brownColor, :clearColor]
  
end  


# extracted and modified from 
# https://github.com/samchandra/Fonts.git
def fonts
    fonts_list = []
    UIFont.familyNames.sort.each do |e|      
      UIFont.fontNamesForFamilyName(e).sort.each do |f|
        fonts_list << f
      end
    end
    fonts_list
end  



# https://github.com/jamesjn/fast_imgur_emailer-motion-ios.git
  def load_image url
    url = NSURL.URLWithString(url)
    image = UIImage.imageWithData(NSData.dataWithContentsOfURL(url))
  end

def load_json
    url = NSURL.URLWithString(url)
    json_data = NSData.dataWithContentsOfURL(url)
    #parse json_data
end
  
# https://github.com/dalacv/WordSearcher.git
def alert(msg)
  alert = UIAlertView.new
  alert.message = msg
  alert.show
  sleep(5)
  alert.dismiss
end
  
  
def url_userinput  url
    if !(/http:\/\/(.*)\// =~ url)
      url = "http://" + url + "/"
    end  
    url
end