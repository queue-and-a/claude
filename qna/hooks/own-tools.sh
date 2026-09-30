#!/bin/sh
# Outside a session the app started, Claude Code's own tools stay as they are.
[ -n "${QNA_SESSION_ID:-}" ] || exit 0
cat <<'JSON'
{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"deny","permissionDecisionReason":"Use the app's tools: ask the person with add_question, file work with create_task."}}
JSON
