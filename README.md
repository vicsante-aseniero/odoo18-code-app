# Odoo 18 Community Source Code

This repository provides a local developer environment for Odoo 18 (Community Edition) with 3rd-party modules and tutorial examples.

Overview

- Odoo 18 Community Edition source is included as a git submodule at `./odoo`.
- Third-party modules are placed under `./extra-addons`, including `extra-addons/openeducat_erp` (OpenEduCat ERP) as a git submodule.
- The Odoo tutorials repository is included as a git submodule at `./tutorials`.

Repository Submodules (from .gitmodules)

- `odoo` — path: `odoo`, url: https://github.com/odoo/odoo.git, branch: 18.0
- `extra-addons/openeducat_erp` — path: `extra-addons/openeducat_erp`, url: https://github.com/openeducat/openeducat_erp.git, branch: 18.0
- `tutorials` — path: `tutorials`, url: https://github.com/odoo/tutorials.git

Quick Start

1. Clone the repository and initialize submodules:

   git clone --recurse-submodules https://github.com/vicsante-aseniero/odoo18-code-app.git

   Or if you already cloned the repo:

   git submodule update --init --recursive

2. Install a supported Python version (Python 3.11+ recommended). Create and activate a virtual environment:

   python3 -m venv venv
   source venv/bin/activate

3. Install Python requirements:

   pip install -r odoo/requirements.txt

4. Configure and run Odoo using `config/odoo.conf`:

   python3 odoo/odoo-bin -c config/odoo.conf

Working with Submodules

- To update submodules to the commit listed in the parent repository:

  git submodule update --init --recursive

- To fetch and update submodules to remote branches:

  git submodule update --remote --merge --recursive

- To manually inspect or change a submodule:

  cd odoo
  git fetch
  git checkout 18.0
  cd -

Developer Tools and Documentation

- The `.devcontainer` folder contains Docker and VS Code configuration to spin up a development environment.
- The `extra-addons/openeducat_erp` module is a 3rd-party community module. For its documentation, visit https://openeducat.org.
- The `tutorials` module contains Odoo developer tutorials: https://www.odoo.com/documentation/18.0/developer/tutorials/setup_guide.html.

License

Please refer to the `LICENSE` file at the repository root for licensing information.
