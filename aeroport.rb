
#London latitude 51.5085300 longitude: -0.1257400 expected IO91wm

def getQht(latitude, longitude)
  str_chr_up = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"         # Constants.
  str_chr_lo = "abcdefghijklmnopqrstuvwxyz"
  str_num = "0123456789"
  lat = latitude
  lon = longitude
  lat += 90                                         # Locator lat/lon origin shift.
  lon += 180
  qth = str_chr_up[(lon / 20).floor]                # 1 st digit: 20 deg longitude slot.
  qth += str_chr_up[(lat / 10).floor]               # 2 nd digit:  10 deg latitude slot.
  qth += str_num[((lon % 20) / 2).floor]            # 3 rd digit:  2 deg longitude slot.
  qth += str_num[((lat % 10) / 1).floor]            # 4 th digit:   1 deg latitude slot.
  qth += str_chr_lo[((lon % 2) * (60 / 5)).floor]   # 5 th digit:  5 min longitude slot.
  qth += str_chr_lo[((lat % 1) * (60 / 2.5)).floor] # 6 th digit: 2.5 min latitude slot.
end
getQht(51.5085300,-0.1257400)


require 'tk'

$resultsVar = TkVariable.new
root = TkRoot.new
root.title = "Window"

image = TkPhotoImage.new
image.file = "/Users/timofiybilyi/Downloads/world-map.png"

label = TkLabel.new(root)
label.image = image
label.place('height' => image.height,
            'width' => image.width,
            'x' => 10, 'y' => 10)
Tk.mainloop