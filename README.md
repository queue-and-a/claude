# Queue & A for Claude Code

The Claude Code marketplace of [Queue & A](https://github.com/queue-and-a). Its one plugin, `qna`, routes a Claude Code session that Queue & A started through the app's tools: questions go out through `add_question`, tasks through `create_task`, and at its first stop the agent is reminded to add to the ticket's handoff and call `finish_stage`. Outside such a session it does nothing.

```sh
claude plugin marketplace add queue-and-a/claude
claude plugin install qna@qna
```

The plugin's version is the version of Queue & A it belongs to.
