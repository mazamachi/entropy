a = ["abc","Alice","random"]
ans = {}
a.each do |name|
	txt = (name<<".txt")
	ans[txt] = File.size(txt)
	zip = (name<<".zip")
	ans[zip] = File.size(zip)
end
str = ""
ans.each do |ar|
	str << ar[0] << "\t: #{ar[1]} bytes\n"
end

File.open("answer.txt", "w") { |file|  
	file.write(str)
}