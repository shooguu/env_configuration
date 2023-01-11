import os
import glob
from typing import List
import shutil
import sys
from pathlib import Path

class Move:
    def __init__(self, dir_path: List[str]) -> None:
        self.dir_path = dir_path

    def check_path_is_valid(self) -> bool:
        paths_are_valid = True
        index_to_delete = []
        for index in range(len(self.dir_path)):
            if not os.path.exists(self.dir_path[index]):
                index_to_delete.append(index)

        for index in reversed(index_to_delete):
            self.dir_path.pop(index)

        return self.dir_path != []

    def get_latest_file_by_type(self, file_type: str) -> str:
        files = []

        for path in self.dir_path:
            for p in os.listdir(path):
                if p.endswith(file_type):
                    files.append(path + '/'+ p)
        newest = max(files , key = os.path.getctime)

        return newest

    def get_latest_file_recursively(self, file_type: str) -> str:
        files = []

        for p in self.dir_path:
            for path in Path(p).rglob(file_type):
                files.append(path)
        newest = max(files, key = os.path.getctime)

        return newest

    def move_to_destination(self, source: str, destination: str) -> None:
        shutil.copy(source, destination)

    def rename_file(self, src: str, dest: str) -> None:
        os.rename(src, dest)


if __name__ == "__main__":
    if sys.argv[1] == "log":
        paths = [                                                                                       \
                    "/home/snakamura/firmware/build/r1x_dcc/config_R1X_ShortMotor_SiC_FDU/log",         \
                    "/home/snakamura/firmware/build/r1x_dcc/config_R1X_LongMotor_IGBT_RDU/log",         \
                    "/home/snakamura/firmware/build/r1x_dcc/config_RPV_ShortMotor_IGBT_FDU/log",        \
                    "/home/snakamura/firmware/build/r1x_dcc/config_Development/log",                    \
                    "/home/snakamura/firmware/build/r1x_dcc/config_R1X_ShortMotor_SiC_FDU_Xilinx/log",  \
                    "/home/snakamura/firmware/build/r1x_dcc/config_R1X_LongMotor_IGBT_RDU_Xilinx/log",  \
                    "/home/snakamura/firmware/build/r1x_dcc/config_RPV_ShortMotor_IGBT_FDU_Xilinx/log", \
                    "/home/snakamura/firmware/build/r1x_dcc/config_Development_Xilinx/log",             \
                    "/home/snakamura/firmware/build/spim/config_CONDOR_R1X_SiC_FDU/log",                \
                    "/home/snakamura/firmware/build/spim/config_RPV_MCA_IGBT_FDU/log",                  \
                    "/home/snakamura/firmware/build/spim/config_CONDOR_R1X_IGBT_RDU/log",               \
                    "/home/snakamura/firmware/build/spim/config_Development/log",                       \
                    "/home/snakamura/firmware/build/ascent_dpim/config_devkit/log",                     \
                    "/home/snakamura/firmware/build/ascent_dpim/config_pcba_ascent/log",                \
                    "/home/snakamura/firmware/build/ascent_dpim/config_fdu_sic/log",                    \
                    "/home/snakamura/firmware/build/ascent_dpim/config_rdu_igbt/log",                   \
                 ]
        valid_path = []
        for p in paths:
            if os.path.exists(p):
                valid_path.append(p)
        m = Move(valid_path)
        if (m.check_path_is_valid()):
            source = m.get_latest_file_by_type(".log")
            destination = "/home/snakamura/firmware"
            file_dest = os.path.dirname(source) + '/' + "build_log.log"
            m.rename_file(source, file_dest)
            m.move_to_destination(file_dest, destination)
        else:
            print("invalid path")
    elif sys.argv[1] == "artifacts":
        paths = ["/home/snakamura/firmware/build/r1x_dcc", "/home/snakamura/firmware/build/spim", "/home/snakamura/firmware/build/ascent_dpim"]
        m = Move(paths)
        if (m.check_path_is_valid()):
            src = [m.get_latest_file_recursively("*.hex"), m.get_latest_file_recursively("*.elf"), m.get_latest_file_recursively("*.map")]
            destination = "/c/software_files"
            for s in src:
                m.move_to_destination(s, destination)


