import os
import glob
from typing import List
import shutil
import sys

# LOG FILE SEARCH CONFIGURATION
SEARCH_DIR = "/home/snakamura/firmware/build/**/"
DESTINATION_LOG = "/home/snakamura/firmware"
OUTPUT_LOG_NAME = "build_log.log"
FILE_TYPE_TO_RETRIEVE_LOG = "*.log"

# ARTIFACT SEARCH CONFIGURATION
DESTINATION_ARTIFACTS = "/c/software_files"
FILE_TYPE_TO_RETRIEVE = ["*.hex", "*.elf", "*.map"]

class Move:
    def __init__(self, dir_path: List[str]) -> None:
        self.dir_path = dir_path

    def get_latest_file_recursively(self, file_type: str) -> str:
        files = []

        for f in glob.glob(self.dir_path + file_type, recursive=True):
            files.append(f)

        newest = max(files, key = os.path.getctime)
        return newest

    def move_to_destination(self, source: str, destination: str) -> None:
        shutil.copy(source, destination)

    def rename_file(self, src: str, dest: str) -> None:
        os.rename(src, dest)


if __name__ == "__main__":
    if sys.argv[1] == "log":
        m = Move(SEARCH_DIR)
        source = m.get_latest_file_recursively(FILE_TYPE_TO_RETRIEVE_LOG)
        file_dest = os.path.dirname(source) + '/' + OUTPUT_LOG_NAME
        m.rename_file(source, file_dest)
        m.move_to_destination(file_dest, DESTINATION_LOG)
    elif sys.argv[1] == "artifacts":
        src = []
        m = Move(SEARCH_DIR)
        for f_type in FILE_TYPE_TO_RETRIEVE:
            src.append(m.get_latest_file_recursively(f_type))
        for s in src:
            m.move_to_destination(s, DESTINATION_ARTIFACTS)


