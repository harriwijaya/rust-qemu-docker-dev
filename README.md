# rust-qemu-docker-dev
Docker development environtment for Rust, including QEMU

## Build docker
```
docker-compose build
docker-compose up -d
```
If you want to enter the container:
```
docker exec -it rust-qemu-dev bash
```
Use `exit` to exit.

## Open from VS Code
In rust-qemu-dev folder, launch VS Code
```
code .
```

Click left buttom corner, select `Attach to Running Container`, and then select the container i.e. `rust-qemu-dev`.

## Stop and Start Again
Stop container and remove the instance (not the image)
```
docker compose down
```

Or, just stop without remove the instance
```
docker compose stop
```
Then restart with
```
docker compose start
```

## Few checks

Create sample program:
```
cargo new hello-rust --bin
cd hello-rust
cargo build
./target/debug/hello-rust
```

Check if QEMU is installed:
```
ls /usr/bin/qemu-system-*
```