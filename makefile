NIM:=nim -d:release
#NIM:=nim -d:release --threads:on --parallelBuild:1
#NIM:=nim -d:release --parallelBuild:1

BINS:=nimer nvill euant0 \
  euant_lines euant_streams euant_sequtils euant_streams_sequtils

time: build
	for b in ${BINS}; do echo $$b; time -p ./$$b; done
input.txt:
	time python gen.py 100000 12 $@
	ls -lh $@
build: ${BINS}
clean:
	rm -rf ${BINS} nimcache/
%: %.nim
	${NIM} c $<
