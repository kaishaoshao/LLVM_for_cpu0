target_arch="-target mips-unknown-linux-gnu"
output_bc="./output/ch1.bc"
mkdir -p output
build/bin/clang  ${target_arch} -c -emit-llvm  ./test/ch1/ch1.c -o ${output_bc}
build/bin/llvm-dis ${output_bc} -o ./output/ch1.ll