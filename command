#!/usr/bin/env bash
set -eo pipefail; [[ -n "$PLUSHU_TRACE" ]] && set -x

if [[ -n "$PLUSHU_APP_NAME" ]]; then
  app=$PLUSHU_APP_NAME
elif [[ -n "$2" ]]; then
  app=$2
  shift
else
  echo "Missing app name" >&2
  exit 1
fi

app_dir=$PLUSHU_APPS_DIR/$app

# Check if app exists
if [[ ! -d "$app_dir" ]]; then
  echo "App not found: $app" >&2
  exit 1
fi

domain_file=$app_dir/domains

if [[ -f "$domain_file" ]]; then
  cat "$domain_file"
fi
