%compile the graclus mex code
%mex -c CFLAGS=-fPIC -DNUMBITS=64 -largeArrayDims mlkkm.cpp -I../multilevelLib -I../metisLib -cxx
%mex -c CFLAGS=-fPIC -DNUMBITS=64 -largeArrayDims wkkm.cpp -I../multilevelLib -I../metisLib -cxx
%mex -c CFLAGS=-fPIC -DNUMBITS=64 -largeArrayDims graclus_mex.cpp -I../multilevelLib -I../metisLib -cxx
%mex -c CFLAGS=-fPIC -DNUMBITS=64 -largeArrayDims io.cpp -I../multilevelLib -I../metisLib -cxx
%mex -largeArrayDims CFLAGS=-fPIC -DNUMBITS=64 -L/p/lib -L. -L../ graclus_mex.o mlkkm.o wkkm.o io.o -lmetis -lm -cxx
%for windows, I used the following instead:
mex -c CFLAGS=-fPIC -largeArrayDims -DNUMBITS=64 mlkkm.cpp -I../multilevelLib -I../metisLib
mex -c CFLAGS=-fPIC -largeArrayDims -DNUMBITS=64 wkkm.cpp -I../multilevelLib -I../metisLib
mex -c CFLAGS=-fPIC -largeArrayDims -DNUMBITS=64 graclus_mex.cpp -I../multilevelLib -I../metisLib
mex -c CFLAGS=-fPIC -largeArrayDims -DNUMBITS=64 io.cpp -I../multilevelLib -I../metisLib
mex -largeArrayDims CFLAGS=fPIC -DNUMBITS=64 -L/usr/lib -L. -L../ graclus_mex.obj mlkkm.obj wkkm.obj io.obj -lmetis