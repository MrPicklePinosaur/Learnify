import enum

class Tags(enum.Enum):
	python = 0
	java = 1
	cplusplus = 2
	csharp = 3

class Experience(enum.Enum):
	beginner = 0
	intermediate = 1
	pro = 2

class TimeToComplete(enum.Enum):
	brief = 0
	lengthy = 1