filename = "data.csv"
namep = 3
scorep = 4
colorp = 5
color = [] 
score =[] 
name =[]
no = 0
place2=0
high=0
least=10
mean = 0
scoremax = 0
t=open(filename)
text = t.read
text = text.split(/[\n,]/)
while namep < text.length
		name.push(text[namep])
		namep = namep + 3
	end
	
while  scorep < text.length
	score.push(text[scorep])
	scorep = scorep + 3
end 

while colorp<text.length
	color.push(text[colorp])
	colorp = colorp +3
end 

for i in 0..score.length
	mean = mean + score[i].to_f
end
 colort = color.uniq
 #puts colort
  for i in 0..colort.length
 	for x in 0..color.length
 		if colort[i] == color[x]
 			no = no+1
 		end 
 		
 	end
 		if no>high
 		   high=no
 		   place=i
 		end
 		no=0
 	end

colort1 = color.uniq

  for i in 0..colort1.length
 	for x in 0..color.length
 		if colort1[i] == color[x]
 			no= no+1
 			#puts no
 		end 
 	end
 		if no<least
 		   least=no
 		   place1=i
 		   #puts no
 		
 		elsif no==least
 			least = place2
 			place2=i
 			#puts i
 			#puts color 	 	
 			#puts colort1[i]
 			#puts no
 		end
 		no=0
 	end

#puts place1
print "the max score is  " ;print score.max;print " by student named : "; puts name[score.index(score.max)]
print "the min score is " ;print score.min ;print " by student named : "; puts name[score.index(score.min)]
print "the mean score is " ; puts mean/score.length
print "the most popular color is " ; puts color[place] 
print "the least popular colors are " ; print colort[place1] ;print " and "; puts colort1[place2]
for i in 0..name.length-1
		fir = name[i].split.first
		lst = name[i].split.last
		firname = fir.byteslice(fir.length-1)
		lstname = lst.byteslice(lst.length-1)
		
	
		fir = fir.byteslice(0,fir.length-1) + firname.capitalize + " " + name[i].split(' ')[1..-1].join(' ').chomp(lst) + lst.byteslice(0,lst.length-1) + lstname.capitalize
		print "Capitalised name: "; puts fir
	end

