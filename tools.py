from typing import Iterable
from sys import argv

def auto_include(selection: Iterable[int]) -> str:
    res = []
    for c in selection:
        res.append(f"\include{{Source-tex/hpmor-chapter-{c}}}")
    # print('\n\n'.join(res))
    return '\n'.join(res)


if __name__ == '__main__':
    if len(argv) >= 2:
        end = min(int(argv[1]) + 1, 123)
        print(auto_include(range(1, end)))
    else:
        print("Usage: python tools.py [starting chapter] [ending chapter]")
        exit(1)
