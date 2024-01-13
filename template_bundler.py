"""
This script creates the temaplate bundles for the individual maps.

This way you can easily download the template for the map you want to use for your mission,
without having to deal with the whole repository.
"""

import pathlib
import argparse
import shutil
import logging

DIRS_TO_COPY = ["arsenal", "functions", "images", "loadouts", "parameter"]
DIRS_TO_COPY_TO_MAIN = ["root"]
MISSION_PREFIXES = ["mission_Carrier", "mission"]

logger = logging.getLogger(__name__, )


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
    prefix_detected = False
    for prefix in MISSION_PREFIXES:
        map_file_name = map_file_name.replace(prefix, "")
        prefix_detected = True
    map_file_name = map_file_name.strip("_-")
    if not prefix_detected:
        logger.warning(f"Map file name %s does not contain any of the expected prefixes %s", map_file, MISSION_PREFIXES)
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

    # template files must be in a folder with  .mapname suffix

    map_bundle_dir = output_dir / remove_map_prefix(map_file) / f"{map_file.stem}.{remove_map_prefix(map_file)}"
    if map_bundle_dir.exists():
        shutil.rmtree(map_bundle_dir)
        print(f"Removed existing {map_bundle_dir}")

    for dir in DIRS_TO_COPY:
        dir_to_copy = pathlib.Path(dir)
        if dir_to_copy.exists():
            dir_to_copy = dir_to_copy.resolve()
            shutil.copytree(dir_to_copy, map_bundle_dir / dir_to_copy.name)

    for dir in DIRS_TO_COPY_TO_MAIN:
        dir_to_copy = pathlib.Path(dir)
        if dir_to_copy.exists():
            dir_to_copy = dir_to_copy.resolve()
            for file in dir_to_copy.iterdir():
                shutil.copy(file, map_bundle_dir)
    shutil.copy(map_file, map_bundle_dir / "mission.sqm")


def main():
    args = parse_args()

    maps = [map for map in args.maps_folder.iterdir() if "sqm" in map.suffix]

    for map in maps:
        bundle_scripts(map, args.output_dir)


if __name__ == "__main__":
    main()
