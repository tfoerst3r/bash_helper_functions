<!--
SPDX-FileCopyrightText: 2026 Thomas Förster <noreply@tfoerster.de>

SPDX-License-Identifier: CC-BY-4.0
-->

<div align='center'>
  <h1>Bash/Bashly Helper Functions</h1>
  <p style='font-size:32pt;'>
    General purpose Bash functions
  </p>
</div>
 

## About the Project

Instead of copy past the function in my script manually I make a collection which I can directly add to my `bashly` projects.


## Getting Started

### Prerequisites

- Bashly see [bashly.dev (link)](https://bashly.dev)

### Installation

- Just clone it via `$ bashly add github-link`


## Usage

You do not need to clone this repository to use the available 'libraries'.

Example for adding the **msg** 'library' to your project.

``` bash
bashly add --source github:tfoerst3r/bash_helper_functions msg
```

Each library can hold several functions. You can list the available libraries via:

```bash
bashly add --source github:tfoerst3r/bash_helper_functions --list
```

The filenames represents the function call itself, so if add, you have the functions `msg` and `msg_not_empty` available.

Each functions has it own file. You can call those functions in your main bash script files. 

## Developing

All available 'libraries' are stated in `libraries.yml` This is where you also need to add your projects.
In `libraries.yml`the source and the target path are stated for each function of the library.
To keep your sanity each file holds the same-name function. So `msg_not_empty.sh` defines a function called `msg_not_empty` and would be available when `bashly add .. msg` (as shown above).

In addition your function file, like `msg_not_empty.sh` should contain the reference to back reference to where it belongs.

Like:

```
## [@bashly-upgrade github:tfoerst3r/bash_helper_functions;create_code_base]
```

- `## [@bashly-upgrade ...]` .. is called when using `bashly upgrade`
- `github:tfoerst3r/bash_helper_functions` .. where the library originate
- `create_code_base` .. the library it belongs to


## Contributing

We are accepting merge requests, bug reports, and feature requests. 


## License

See `LICENSE.md` for more information.


