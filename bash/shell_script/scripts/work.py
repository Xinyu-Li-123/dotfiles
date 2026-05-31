#!/usr/bin/env python3

from pathlib import Path
import subprocess
import sys


CONFIG_DIR = Path(__file__).resolve().parent / "tmuxp_configs"


def find_configs() -> dict[str, Path]:
    return {
        path.stem: path for path in sorted(CONFIG_DIR.glob("*.yaml")) if path.is_file()
    }


def print_available(configs: dict[str, Path]) -> None:
    print("Available tmuxp configs:")
    for index, name in enumerate(configs, start=1):
        print(f"{index}. {name}")


def select_config(configs: dict[str, Path]) -> Path:
    names = list(configs)
    print_available(configs)

    while True:
        try:
            selection = input("\nSelect a config: ").strip()
        except EOFError:
            print("\nNo config selected.", file=sys.stderr)
            raise SystemExit(1)
        except KeyboardInterrupt:
            print("\nSelection cancelled.", file=sys.stderr)
            raise SystemExit(130)

        try:
            index = int(selection)
        except ValueError:
            print("Enter one of the displayed numbers.", file=sys.stderr)
            continue

        if 1 <= index <= len(names):
            return configs[names[index - 1]]

        print("Selection is outside the displayed range.", file=sys.stderr)


def main() -> int:
    configs = find_configs()

    if not configs:
        print(f"No tmuxp configs found in {CONFIG_DIR}.", file=sys.stderr)
        return 1

    if len(sys.argv) == 1:
        config_path = select_config(configs)
    elif len(sys.argv) == 2:
        name = sys.argv[1]
        config_path = configs.get(name)

        if config_path is None:
            print(f"Unknown config: {name}", file=sys.stderr)
            print_available(configs)
            return 1
    else:
        print(f"Usage: {Path(sys.argv[0]).name} [config]", file=sys.stderr)
        print_available(configs)
        return 2

    try:
        return subprocess.run(
            ["uvx", "tmuxp", "load", str(config_path)],
            check=False,
        ).returncode
    except FileNotFoundError:
        print("Unable to run tmuxp: uvx was not found.", file=sys.stderr)
        return 127


if __name__ == "__main__":
    raise SystemExit(main())
