#!/usr/bin/env bash
set -eo pipefail; [[ -n "$PLUSHU_TRACE" ]] && set -x

if [[ -z "$2" ]]; then
  echo "Missing app name" >&2
  exit 1
fi

app=$2
app_dir=$PLUSHU_ROOT/apps/$app
domain_file=$app_dir/domains

[[ -f "$domain_file" ]] && cat "$domain_file"
