import matplotlib.pyplot as plt 
  
# x-coordinates of left sides of bars  
left = [] 
for i in range(8):
	left.append(i+1) 
height = [] 
# heights of bars
tick_label = ['DRRIP-C0','DRRIP-C1','LRU-C0','LRU-C1', 'SHIP-C0','SHIP-C1', 'SRRIP-C0','SRRIP-C1'] 
plt.figure(figsize=(10,5))
arr = []
f = open("./SMS-Traces/data.txt", "r")
for c in range(96):
	x = f.readline()
	arr.append(float(x))
	# print(len(arr))
height = []
for h in range(0,93,4):
	# print(arr[h])
	height.append(arr[h+2]/arr[h])
	height.append(arr[h+3]/arr[h+1])
	
# print(height)
# print(len(height))

# plt.xlabel('') 
# # naming the y-axis 
# plt.ylabel('IPC ratio[no-cce_version/normal_version]') 
# # plot title 

for j in range(6):
	print(height[8*j:8*(j+1)])
	arr1 = height[8*j:8*(j+1)]
	plt.ylabel('IPC ratio[no-cce_version / normal_version]')
	plt.title('MIX_'+str(j+1))
	plt.bar(left, arr1, tick_label = tick_label,width = 0.8, color = ['#003f5c', '#ff6361','#ffa600','#488f31'])
	plt.savefig("MIX_"+str(j+1)+".png")
	plt.clf()
  		

# print(height)
# height = [10, 24, 36, 40, 5 , 7, 10, 24, 36, 40, 5 , 7, 10, 24, 36, 40, 5 , 7 , 10, 24, 36, 40, 5 , 7] 
  
# labels for bars 
# tick_label = ['one', 'two', 'three', 'four', 'five','six','one', 'two', 'three', 'four', 'five','six','one', 'two', 'three', 'four', 'five','six','one', 'two', 'three', 'four', 'five','six'] 
  
# plotting a bar chart 
# plt.bar(left, height, tick_label = tick_label, 
#         width = 0.8, color = ['red', 'green','blue','yellow']) 
  
# naming the x-axis 
 
  
# function to show the plot 
# plt.show()
