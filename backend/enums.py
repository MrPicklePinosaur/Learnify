import enum
from enumchoicefield import ChoiceEnum

class Tags(ChoiceEnum):
	python = 0
	java = 1
	cplusplus = 2
	csharp = 3

class Experience(ChoiceEnum):
	beginner = 0
	intermediate = 1
	pro = 2

class TimeToComplete(ChoiceEnum):
	brief = 0
	lengthy = 1