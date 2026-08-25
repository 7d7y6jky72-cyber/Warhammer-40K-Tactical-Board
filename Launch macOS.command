#!/bin/bash
cd "$(dirname "$0")"
(open http://127.0.0.1:8765 >/dev/null 2>&1 &)
python3 -m http.server 8765
