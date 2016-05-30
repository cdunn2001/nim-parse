NIM:=nim -d:release
#NIM:=nim -d:release --threads:on --parallelBuild:1
#NIM:=nim -d:release --parallelBuild:1

BINS:=nimer nvill euant0 \
  euant_lines euant_streams euant_sequtils euant_streams_sequtils

build: ${BINS}
time: build
	for b in ${BINS}; do echo $$b; time ./$$b; done
%: %.nim
	${NIM} c $<
