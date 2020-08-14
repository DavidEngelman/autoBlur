
import random
from sklearn.model_selection import train_test_split

FULL_DATASET_FILE = 200_000
DATA_PATH = "./build/darknet/x64/data"
ALL_IMG_FILE = "all_img_files.txt"
TEST_PCT = 0.2


def write2file(data, set="train"):
    with open(f'{DATA_PATH}/{set}.txt', 'w') as f:
        for d in data:
            f.write(f"{d}")

def get_exclude_set(old_train, val):
    exclude = []
    for set in old_train + val:
        with open(set, 'r') as f:
            exclude += f.readlines()
    return exclude


if __name__ == "__main__":

    old_train = [f"{DATA_PATH}/train_1.txt"]
    val = [f"{DATA_PATH}/test.txt"]

    # to_exclude = get_exclude_set([], val)

    with open(f'{DATA_PATH}/{ALL_IMG_FILE}', 'r') as f:
        data = f.readlines()

    # data = list(set(data) - set(to_exclude))

    # Shuffle and keep part of data
    random.shuffle(data)
    data = data[:FULL_DATASET_FILE]

    # Split
    if TEST_PCT == 0.0:
        train = data
    else:
        train, test = train_test_split(data, test_size=TEST_PCT)

    # Output
    write2file(train)
    write2file(test, set="test")
