# electronics-calculators

![License](https://img.shields.io/badge/License-MIT-darkgreen?logo=opensourceinitiative)

Набор [Jupyter-блокнотов][4] и IPython-калькуляторов для проектирования электронных
устройств и проведения исследований.

## Содержание

- [electronics-calculators](#electronics-calculators)
  - [Содержание](#содержание)
  - [Quick Start. Как быстро запустить блокноты Jupyter](#quick-start-как-быстро-запустить-блокноты-jupyter)
    - [Вариант А. Запуск на локальной машине (окружение Miniconda)](#вариант-а-запуск-на-локальной-машине-окружение-miniconda)
    - [Вариант Б. Запуск в Docker-контейнерах](#вариант-б-запуск-в-docker-контейнерах)
    - [Запуск удалённо (Dev Containers / GitHub Codespaces)](#запуск-удалённо-dev-containers--github-codespaces)

## Quick Start. Как быстро запустить блокноты Jupyter

Запуск блокнотов возможен различными вариантами ниже.

### Вариант А. Запуск на локальной машине (окружение Miniconda)

1. Установите [Miniconda][1].

   > [!TIP]
   > *Anaconda/Miniconda* предоставляет собой изолированные среды выполнения Python-приложений без виртуальных машин.

2. Войдите в терминал с окружением Conda и создайте окружение из файла зависимостей, затем выполните цепочку команд:
   ```bash
   conda env create --name electro-calcs --yes --file ./.devcontainer/environment.yml
   conda activate electro-calcs
   jupyter notebook
   ```
   (либо `jupyter lab`)

3. Если все правильно, автоматически откроется веб-браузер по-умолчанию с нужным URL. Eсли этого не произошло, в терминале будет ссылка с токеном, чтобы это сделать вручную.

См. подробную [документацию Wiki документация][3]

### Вариант Б. Запуск в Docker-контейнерах

1. Установите [Docker Desktop][2] (вместе с Docker Compose).
   
2. Из терминала в корневой директории проекта выполните:
   ```bash
   docker compose up
   ```
   > [!TIP]
   > Первый запуск может быть долгим, система автоматически начнет сборку контейнера `myjupyter/scipy-notebook`.

3. Откройте в браузере `http://localhost:8888/tree?token=...`. Токен доступа возьмите из логов
   контейнера.

См. подробную [документацию Wiki документация][3]

### Запуск удалённо (Dev Containers / GitHub Codespaces)

Проект содержит готовый `.devcontainer/devcontainer.json`.

**Dev Containers (VS Code):**

1. Установите расширение [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).
2. Откройте папку проекта в VS Code.
3. Выполните команду **«Dev Containers: Reopen in Container»** — контейнер соберётся
   и настроится автоматически.

**GitHub Codespaces:**

1. Откройте репозиторий на GitHub.
2. Нажмите **Code** → **Codespaces** → создайте новое или подключитесь к
   существующему пространству.

См. подробную [документацию Wiki документация][3]


[1]: https://docs.conda.io/en/latest/ "Conda.io official page"
[2]: https://www.docker.com/products/docker-desktop/ "Docker"
[3]: https://github.com/Rustaphor/electronics-calculators/wiki "Документация Wiki"
[4]: https://jupyter.org/ "Jupyter Notebooks Official Page"