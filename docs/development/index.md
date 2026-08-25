# Разработка

Pulse использует Rust toolchain, зафиксированный в `rust-toolchain.toml`.
Компоненты rustfmt и Clippy устанавливаются вместе с toolchain.

## Проверка Rust workspace

Из корня репозитория выполняются:

```bash
cargo fmt --all -- --check
cargo clippy --workspace --all-targets --all-features -- -D warnings
cargo test --workspace
```

## Проверка документации

MkDocs Material устанавливается отдельно через `pipx`. Версия зависимости
зафиксирована в `requirements-docs.txt`.

Строгая сборка:

```bash
make docs-build
```

Локальный сервер с автоматическим обновлением:

```bash
make docs-serve
```

По умолчанию Makefile использует `$HOME/.local/bin/mkdocs` и адрес
`127.0.0.1:8000`. Переменные `MKDOCS` и `DOCS_ADDR` позволяют изменить эти
значения без правки Makefile.
