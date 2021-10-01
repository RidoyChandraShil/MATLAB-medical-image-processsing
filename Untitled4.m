a=magic(5)
w=[-1 0 1]
b = imfilter(a,w)
c = imfilter(a,w,'full')
d = imfilter(a,w,'conv')
e = imfilter(a,w,'replicate')
f = imfilter(a,w,'replicate','full')