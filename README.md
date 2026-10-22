# Protheus Docker 12.1.2610

Imagem Docker para execução do **TOTVS Protheus 12** (AppServer), versão 12.1.2610, em ambiente containerizado.

## Descrição

Este projeto monta uma imagem Docker Protheus 12.1.2610 sobre `feliperaposo/protheus-docker-base:26` (AppServer 26.3.0.0, Oracle Linux 9). A imagem traz o RPO, os dicionários e a systemload dessa versão. Serve para desenvolvimento, testes ou orquestração (Kubernetes, Docker Compose, etc.).

Se estiver buscando um ambiente completo com Protheus + License + dbAccess + Postgres, acesse esse [projeto](https://github.com/Felipe-Raposo/protheus-docker-compose).

### Características

- **Base:** `feliperaposo/protheus-docker-base:26` (AppServer 26.3.0.0)
- **AppServer:** porta TCP 1235. A 1234 é o `app-root-proxy` da imagem base: entrega `/webapp/` ao AppServer e `/app-root` ao HTTP Server
- **REST:** porta 8080 (`/rest`)
- **HTTP Server:** porta 9995 (`/app-root`)
- **App Monitor:** porta 32033 (`/app-monitor`)
- **Configuração dinâmica:** banco de dados definido via `APPSERVER_DATABASE`

## Pré-requisitos

- Docker (com BuildKit habilitado para build)
- Host de build `linux/amd64` (`make build` passa `--platform=linux/amd64`)
- Imagem `feliperaposo/protheus-docker-base:26` disponível localmente ou no registry

## Build

```bash
# Build local das tags de versão
make build
```

## Publicação da imagem

```bash
# Build e push das tags de versão
make release

# Incluir também a tag latest
make release_latest
```

Gera as tags:

- `feliperaposo/protheus:p12.1.2610`
- `feliperaposo/protheus:latest` (com `release_latest`)

## Estrutura interna (referência)

- **Entrypoint:** `/protheus.sh`
- **APO:** `/protheus12/apo/`
- **AppServer:** Binário em `/protheus12/bin/appserver` (via imagem base)
- **Configuração:** `appserver.ini` (parâmetro `{{APPSERVER_DATABASE}}` substituído em runtime)
- **Protheus Data:** `/protheus12/protheus_data/`
- **SystemLoad:** Descompactação automática de `systemload.tar.xz` em `/protheus12/protheus_data/systemload` na primeira inicialização

## Licença

Este projeto está sob a [GNU General Public License v3.0](LICENSE).

## Mantenedor

Felipe Raposo — [feliperaposo@gmail.com](mailto:feliperaposo@gmail.com)
