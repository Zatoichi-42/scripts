# Basic Setup
1. Install VS Code: go to https://code.visualstudio.com/ then click Download
 Open your claude Code. Type "help me setup VS Code for use with Claude Code team account"
2. Approve all changes to local files
3. Open VS Code & open your src folder CTRL + o -> select the source folder
4. Click on Extensions (5th from the type) or hit CTRL+SHIFT+X. 
5. Install Claude Code for VS Code - Anthropic - anthropic.com -> Trust Publisher and Install
6. Open Terminal from VS Code (CTRL+SHIFT+` or Terminal from Menu)
7. Sign in to Claude by running >claude in the terminal (may prompt for credentials)
8. Accept "Yes, I trust this folder"
9. Open native Claude Code window CTRL+SHIFT+P -> type Claude and select it to open
10. Select Claude Opus 4.6 for anything serious
11. Verify the status line — Claude

# Uninterrupted Development
**NOTE: this is YOLO mode.  This will NOT stop for 99% of the tasks to ask you if it should do dangerous things.  Be sure you understand the risks.**

Once you are comfortable... you can start claude with 
```
claude  --allowedTools "Bash(*)" "Edit(*)" "Write(*)" "Read(*)" "WebFetch(*)" --dangerously-skip-permissions
```
# Terminal Suggestion
install WARP terminal - VS Code terminal sucks

# DEBUGGING
There are sometimes errors.
Try CTRL+SHIFT+P -> Reload Claude.
If does not work
'''
claude auth logout && claude auth login
'''

reload VS Code window (Cmd+Shift+P → "Developer: Reload Window")

# PLUGINS
***you  DO NOT NEED TO USE commands below***

Simply run /plugin, select the plugins you want (they are ordered in the order of popularity)
hit i and enter

## Refresh Plugins
After the install: 
```
/reload-plugins 
```

## Design & Architecture Plugins... 
```
/plugin install superpowers@claude-plugins-official
  example "help me plan this feature" or "let's debug this issue")

/plugin install feature-dev@claude-plugins-official
  example: "feature-dev Add user authentication with OAuth or simply /feature-dev "

/plugin install frontend-design@claude-plugins-official
  example: "Use the frontend design skill. Create a music player interface"
```        
## USEFUL UTILITY plugins.  
```
/plugin install security-guidance@claude-plugins-official
  automatic
  
/plugin install claude-code-setup@claude-plugins-official
        example: "recommend automations for this project", "help me set up Claude Code", or "what hooks should I use?"

/plugin install claude-md-management@claude-plugins-official
        example "Run /revise-claude-md after a productive session to capture new insights" 

/plugin install code-review@claude-plugins-official
        example  "on any PR branch run: /code-review" 

/plugin install github@claude-plugins-official

/plugin install commit-commands@claude-plugins-official
        example: "Type /commit to automatically stage changes and create a commit with an AI-generated message. Use /commit-push-pr for a complete workflow that commits, pushes to a feature branch, and creates a pull request in one step. Run /clean_gone to remove local branches that have been deleted from the remote repository."
    
/plugin install context7@claude-plugins-official
        this one makes sure to use up-to-date 3rd party docs
        example "use context7: implement xxxx"

/plugin install linear@claude-plugins-official
        example: "Pull LINEAR-214 and summarize what needs to be done"

/plugin install sentry@claude-plugins-official
        example: "/seer "What are the top errors in the last 24 hours?" or "Show me unresolved issues assigned to me." Run /getIssues [projectName]"

/plugin install typescript-lsp@claude-plugins-official
        ts/js mastery example: "go to the definition of this function", "find all references to this variable", or "check for type errors in this file".
```     
## Supplemental Plugins
```
/plugin install skill-creator@claude-plugins-official
        example: Invoke the skill with /skill-creator and choose a mode. Try prompts like: "Create a new skill that reviews PRs for security issues," "Run evals on my code-review skill," "Improve my deploy skill based on these test cases," or "Benchmark my skill across 10 runs and show variance."

/plugin install playground@claude-plugins-official
        example: "playground followed by what you want to explore. Try prompts like: "create a playground for button design styles", "build a SQL query explorer for my users table", "make an interactive concept map for machine learning fundamentals", or "create a diff review tool for my PR changes"

    
/plugin install chrome-devtools-mcp@claude-plugins-official
        example: "Check console for JavaScript errors"

/plugin install figma@claude-plugins-official
        example: "Generate a React component from the Hero Section frame: [Figma link to frame]" 

/plugin install playwright@claude-plugins-official
        optional - useful to debug web ui

/plugin install vercel@claude-plugins-official
        example:"/deploy /vercel-logs  or /vercel-setup"
```

## R&D PLUGINS - these can WASTE TOKENS

**Make sure you understand what this does - can get VERY expensive on tokens**
```
/plugin install ralph-loop@claude-plugins-official
```
            example: /ralph-loop:ralph-loop "Migrate all v1 endpoints to v2, update tests, commit each change"

## PLUGIN Directory
16 Go to https://claude.com/plugins and chose plugins that you need (definitely grab Rust or whatever language you will be using) 
Good ones: Language specific (e.g. RUST) - it's a MUST!

 
  
