import os
# Constants for paths
REDDITION_ROOT = os.path.dirname(os.path.dirname(__file__))
DATA_DIR = os.path.join(REDDITION_ROOT, "data")

def setup_working_directory():
    working_directory = os.path.join(DATA_DIR, "reddition")
    os.makedirs(working_directory, exist_ok=True)
    return working_directory

def make_necessary_folder(file_path):
    os.makedirs(os.path.dirname(file_path), exist_ok=True)