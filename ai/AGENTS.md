# General Rules

- When working on a project, don't run any command that build / run / test the project. When checking correctness, you should only statically read the project code, or rely on non-intrusive checker such as `cargo check`.

- When working on a git repo, you should never add / commit files yourself. Instead, you should leave it to me, since I may build / run / review / adjust your code.

- When you are in a git repo, and there are uncommitted change (staged or not), don't write anything to the codebase unless I explicitly approve it. Sometimes I may forget to commit previous changes when I ask you to update the codebase. If you are in plan mode and your plan need to modify the uncommitted file, add a warning section in the end of your plan to warn me about it. If I approve your plan, I automatically approve you to modify the file.

- If you want to modify the README or add any comment (you don't have to), restrict your writing to ASCII-only, and avoid using emoji or advanced unicode characters (such as em dash)
