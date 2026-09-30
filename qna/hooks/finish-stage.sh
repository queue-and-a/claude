#!/bin/sh
# In a session the app started, the first stop reminds the agent that only the app's tools
# reach the person, and to hand the stage on unless it already did.
[ -n "${QNA_SESSION_ID:-}" ] || exit 0
input="$(cat)"
case "$input" in
*'"stop_hook_active":true'* | *'"stop_hook_active": true'*) exit 0 ;;
esac
cat <<'JSON'
{"decision":"block","reason":"Nobody reads this reply: only the app's tools reach the person. If you have not yet, ask your open questions with add_question, add a handoff entry with add_handoff, then call finish_stage, or abort_stage with the reason. If you already did, or everything left waits on an answer, stop now without repeating it."}
JSON
