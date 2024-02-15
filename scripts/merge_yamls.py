"""Script for merging multiple mamba environment files into one."""

import sys
from typing import Any, Dict
import yaml


def merge_yamls(yaml_files: list[str], output_file: str) -> None:
    """Merge multiple yaml files into one."""
    merged: Dict[str, Any] = {}
    for file in yaml_files:
        with open(file, "r") as stream:
            data = yaml.safe_load(stream)
            merged = merge_dicts(merged, data)
    with open(output_file, "w") as stream:
        yaml.dump(merged, stream, default_flow_style=False)


def merge_dicts(dict1: Dict[str, Any], dict2: Dict[str, Any]) -> Dict[str, Any]:
    """Merge two dictionaries."""
    for key in dict2:
        if key in dict1:
            if isinstance(dict1[key], dict) and isinstance(dict2[key], dict):
                dict1[key] = merge_dicts(dict1[key], dict2[key])
            elif isinstance(dict1[key], list) and isinstance(dict2[key], list):
                dict1[key] = list(set(dict1[key] + dict2[key]))
            else:
                dict1[key] = dict2[key]
        else:
            dict1[key] = dict2[key]
    return dict1


if __name__ == "__main__":
    merge_yamls(sys.argv[2:], sys.argv[1])
