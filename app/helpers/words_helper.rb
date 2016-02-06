module WordsHelper
	$count = Word.count
	ans=[]
	(1..$count).each { |r| ans << Word.find(r).meaning}
	$ans = ans
	def options()
		ri = []
		until ri.include? @word.id
			while ri.length < 4 do 
				v = rand(0...$count)
				ri << v unless ri.include? v
			end
		end
		ans=[]
		ri.each do |n|
			ans << $ans[n]
		end
		return ans
	end
	def find_word()
			v = rand(1..$count)
			return Word.find(v)
	end
end
