#!/bin/sh
# In a session the app started, the first stop reminds the agent to hand the stage on.
[ -n "${QNA_SESSION_ID:-}" ] || exit 0
input="$(cat)"
case "$input" in
*'"stop_hook_active":true'* | *'"stop_hook_active": true'*) exit 0 ;;
esac
cat <<'JSON'
{"decision":"block","reason":"Before you stop: add a handoff entry with add_handoff, then call finish_stage (or abort_stage) for your ticket."}
JSON
