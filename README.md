# A playground to experiment with Streamlit library


[Streamlit](https://streamlit.io) is a powerful opensource python library  that simplifies the creation of **interactive web applications** for **data science** and **AI projects**.


This project is currently composed of 2 sample applications:

* [simple_chat.py](./simple_chat.py): that showcases a simple `ChatGPT`-like applciation built using solely Streamlit
* [llm_chat.py](./llm_chat.py): the same `ChatGPT`-like application interacting with `OpenAPI` using [`Langchain`](https://python.langchain.com/v0.2/docs/introduction/) (requires an `OPENAPI_KEY` to be set in the [.streamlit/secrets.toml](./streamlit) file )


## Development Workstation Setup

If you are using `VSCode`, and provided you have [Docker](https://docker.com) installed on your machine, then you can leverage [Dev Containers](https://containers.dev) through this [VSCode extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers),
 to easily setup your development environment, with everything needed already installed (namely `Python 3` plus some useful extensions).

To do so, simply:

- Checkout the repo
- Open it with `VSCode` (or `IntelliJ`)
- Open the [Command Palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette) and select "Dev Containers: Open Folder in Container..."

The repo comes with a preconfigured `devcontainer.json` file (located in `.devcontainer/` folder at root), that `VSCode` will automatically use to install the aforementioned tools, inside a Docker image.
It will even run `pip install -r requiremnts.txt` for you, to automatically install all project dependencies

If you open the repo in [Github Codespace](https://github.com/features/codespaces), it will also leverage this config file, to setup the codespace, with the same required tools.


## Running a sample


```
streamlit run <file.py>
```
