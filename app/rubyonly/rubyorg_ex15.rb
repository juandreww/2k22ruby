filename = ARGV.first
# menyimpan nilai dari argument CLI pertama ke variable filename
# menyimpan nilai dari argument pertama pada CLI ke variable bernama filename
# menyimpan nilai dari argument pertama pada CLI ke variable bernama filename
# filename = ARGV.first berarti variable filename mengambil nilai dari argument pertama pada CLI
# filename = ARGV.first artinya filename (variable) mengambil nilai dari argument pertama saat CLI dijalankan
txt = open(filename)
# open(filename) artinya membuka sebuah file dan menyimpan seluruh isi teks yang ada dalam file tersebut ke variable txt
# open(filename) berarti membuka file dari path filename dan menyimpan seluruh isi teks nya ke variable txt
# open(filename) berarti membuka file dari path filename dan menyimpan seluruh isi teks nya ke variable txt
# open(filename) berarti membuka file dari directory_path filename dan menyimpan seluruh isi teks-nya ke variable txt
# open(filename) berarti membuka file dari directory_path filename dan menyimpan seluruh isi teks-nya ke variable txt
puts "Here's your file #{filename}:"
puts txt.read
puts ""
puts txt.inspect
puts ""

print "Type the filename again: "
file_again = STDIN.gets.chomp
txt_again = open(file_again)
print txt_again.read
puts ""