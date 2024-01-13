"""
This script creates the temaplate bundles for the individual maps.

This way you can easily download the template for the map you want to use for your mission,
without having to deal with the whole repository.
"""

import pathlib
import argparse

DIRS_TO_COPY = ['templates', 'template_bundles', 'scripts', 'mission_framework']
DIRS_TO_COPY_TO_MAIN = ['root']

def parse_args() -> argparse.Namespace:
    """
    Parse the command line arguments. and make sure the folders exist
    Returns:

    """
    parser = argparse.ArgumentParser(description='Create template bundles for the individual maps.')
    parser.add_argument('--maps_folder', type=pathlib.Path, default=pathlib.Path('maps'),
    parser.add_argument('--output_dir', type=pathlib.Path, default=pathlib.Path('template_bundles'),
                        help='Path to the directory where the template bundles will be saved.')

    # parser.add_argument('--resource_dirs', n = "+",type=pathlib.Path, default=pathlib.Path('templates'),
    #                     help='Path to the directory containing the template files.')

    parser.add_argument()

    args = parser.parse_args()
    if not args.maps_folder.exists():
        raise FileNotFoundError(f"Maps folder {args.maps_folder} does not exist.")
    if not args.output_dir.exists():
        args.output_dir.mkdir(parents=True)
    else:
        print(f"Output directory {args.output_dir} already exists. Existing files will be overwritten.")
    return args



def main():
    args = parse_args()




if __name__ == '__main__':
    main()