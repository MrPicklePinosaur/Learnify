from queue import Queue
from collections import namedtuple

def topological_sort(courses):
    t=[]
    visited={i:0 for i in courses.keys()}
    stack=Queue()
    in_degree={i:0 for i in courses.keys()}

    for i in courses.keys():
        for j in courses.keys():
            if j in courses[i]:
                in_degree[j]+=1
    for i in courses.keys():
        if in_degree[i]==0:
            stack.put(i)
            visited[i]=True
    while not stack.empty():
        vertex=stack.get()
        t.append(vertex)
        for j in courses.keys():
            if j in courses[vertex] and not visited[j]:
                in_degree[j]-=1
                if in_degree[j]==0:
                    stack.put(j)
                    visited[j]=True
    return t

def organize_prereqs(courses_obj):
    courses={c["focus"]:[i["focus"] for i in courses_obj if i["focus"]!=c["focus"] and c["focus"] in i["prereqs"]] for c in courses_obj}
    visited={i:False for i in courses.keys()}
    order=topological_sort(courses)
    return sorted(courses.keys(),key=order[courses["focus"]])

'''
if __name__ == '__main__':
    organize_prereqs(

        [{"focus":1,"prereqs":[7]},{"focus":2,"prereqs":[7,1]},{"focus":6,"prereqs":[1]},
         {"focus":3,"prereqs":[9,7,4]},{"focus":4,"prereqs":[]},{"focus":5,"prereqs":[4,10]},
         {"focus":7,"prereqs":[]},{"focus":8,"prereqs":[2,4]},{"focus":9,"prereqs":[5]}]
    )
'''

