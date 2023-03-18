#!/usr/bin/env python3

import os, re, shutil

class FileUtils:
    def exists(self, *paths: str):
        return all(
            [os.path.exists(path) for path in paths]
        )

    def list(self, path: str = './'):
        if self.exists(path):
            return [*os.walk(path)][0][-1]
        return []

    def move(self, src: str, dst: str):
        if self.exists(src, dst):
            shutil.move(src, dst)

    def create_dir(self, path: str):
        if not self.exists(path):
            os.mkdir(path)


if __name__ == "__main__":
    file_utils = FileUtils()

    files = file_utils.list()
    for file in files:
        if '.mp4' in file[-4::]:
            ep_name_list = re.findall(r'Episódio \d+ - (.+)\.mp4', file)

            is_list = isinstance(ep_name_list, list)
            contain_1 = len(ep_name_list) == 1

            if is_list and contain_1:
                [ep_name] = ep_name_list

                file_utils.create_dir(ep_name)
                file_utils.move(file, ep_name)
            
