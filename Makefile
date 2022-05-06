OS_NAME=atrnos
IMAGE=target/x86_64-${OS_NAME}/debug/bootimage-${OS_NAME}.bin

${IMAGE}:
	cargo bootimage

build: ${IMAGE}

run: build
	cargo run
