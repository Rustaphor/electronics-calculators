import yaml
from pathlib import Path

exclude = ["python",
           "jupyterlab",
           "notebook",
           "voila"]

env_file = Path(__file__).parent / "environment.yml"
with open(env_file) as yf:
    data = yaml.safe_load(yf)

deps = [d for d in data["dependencies"] if d.lower() not in (e.lower() for e in exclude)]
req_file = Path(__file__).parent / "requirements.txt"
req_file.write_text("\n".join(deps) + "\n")