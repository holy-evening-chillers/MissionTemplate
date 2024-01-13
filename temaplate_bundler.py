"""
This script creates the temaplate bundles for the individual maps.

This way you can easily download the template for the map you want to use for your mission,
without having to deal with the whole repository.
"""

import pathlib
import argparse
import shutil

DIRS_TO_COPY = ["arsenal", "functions", "images", "loadouts", "parameter"]
DIRS_TO_COPY_TO_MAIN = ["root"]
MISSION_PREFIXES = ["mission_Carrier", "mission"]


def parse_args() -> argparse.Namespace:
    """
    Parse the command line arguments. and make sure the folders exist

    Returns:
        argparse.Namespace: The parsed command line arguments.
            * maps_folder: Path to the folder containing the map files.
            * output_dir: Path to the directory where the template bundles will be saved.
    """
    parser = argparse.ArgumentParser(
        description="Create template bundles for the individual maps."
    )
    parser.add_argument(
        "--maps_folder", type=pathlib.Path, default=pathlib.Path("maps")
    )
    parser.add_argument(
        "--output_dir",
        type=pathlib.Path,
        default=pathlib.Path("template_bundles"),
        help="Path to the directory where the template bundles will be saved.",
    )

    # parser.add_argument('--resource_dirs', n = "+",type=pathlib.Path, default=pathlib.Path('templates'),
    #                     help='Path to the directory containing the template files.')

    args = parser.parse_args()
    if not args.maps_folder.exists():
        raise FileNotFoundError(f"Maps folder {args.maps_folder} does not exist.")
    if not args.output_dir.exists():
        args.output_dir.mkdir(parents=True)
    else:
        print(
            f"Output directory {args.output_dir} already exists. Existing files will be overwritten."
        )
    return args


def remove_map_prefix(map_file: pathlib.Path) -> str:
    """
    Remove the map prefix from the map file name.

    Args:
        map_file: Path to the map file.

    Returns:
        str: The map file name without the prefix.
    """
    map_file_name = map_file.stem
    for prefix in MISSION_PREFIXES:
        map_file_name = map_file_name.replace(prefix, "")
    return map_file_name


def bundle_scripts(map_file: pathlib.Path, output_dir: pathlib.Path):
    """
    Bundle the scripts for the map.

    Args:
        map_file: Path to the map file.
        output_dir: Path to the output directory.

    Returns:
        bool: True if the bundling was successful, False otherwise.
    """

    map_bundle_dir = output_dir / map_file.stem

    for dir in DIRS_TO_COPY:
        dir_to_copy = pathlib.Path(dir)
        if dir_to_copy.exists():
            dir_to_copy = dir_to_copy.resolve()
            print(f"Copying {dir_to_copy} to {output_dir}")
            shutil.copytree(dir_to_copy, map_bundle_dir / dir_to_copy.name)

    for dir in DIRS_TO_COPY_TO_MAIN:
        dir_to_copy = pathlib.Path(dir)
        if dir_to_copy.exists():
            dir_to_copy = dir_to_copy.resolve()
            print(f"Copying {dir_to_copy} to {map_bundle_dir}")
            for file in dir_to_copy.iterdir():
                shutil.copy(file, map_bundle_dir)


def main():
    args = parse_args()

    maps = [map for map in args.maps_folder.iterdir() if "sqm" in map.suffix]
    for map in maps:
        bundle_scripts(map, args.output_dir)


if __name__ == "__main__":
    main()
