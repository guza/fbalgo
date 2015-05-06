class endians:
	hm = 0
	def __init__(self,testcase):
		self.testcase = []
	def check_range(self):
		self.hm = input()
		if 1<= self.hm <= 10000 :
			self.input()
		else :
			return False
	def input(self):
		for i in range(0,self.hm):
			self.testcase.append(input())
		self.output()

	def output(self):
		for i in range(0,self.hm):
			answer = (self.testcase[i]&0xff)<<24 
			answer = answer | ((self.testcase[i]>>8)&0xff)<<16
			answer = answer | ((self.testcase[i]>>16)&0xff)<<8
			answer = answer | ((self.testcase[i]>>24)&0xff)
			print answer
	def bits(self):
		return int(math.log(n,2)+1)


if __name__ == "__main__":
	e = endians([])
	e.check_range()
	
