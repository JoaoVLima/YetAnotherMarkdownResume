# 📝 Yet Another Markdown Resume

**Yet Another Markdown Resume** é um template para gerenciar múltiplos currículos usando **Markdown**.
O projeto gera PDFs a partir de Markdown e permite que você organize diferentes currículos para diferentes vagas ou tecnologias.

O objetivo é ter um sistema **simples, replicável e automatizável**, que funcione offline e online, e que possa ser facilmente adaptado por qualquer pessoa no GitHub.

---

## 📁 Estrutura do projeto

```
src/                 <- Markdown dos currículos (você mesmo cria as subpastas e arquivos)
  ├─ java/index.md   <- Currículo Java (exemplo)
  ├─ python/index.md <- Currículo Python (exemplo)
  └─ nodejs/index.md <- Currículo NodeJS (exemplo)
out/                 <- PDFs gerados automaticamente
  ├─ java/index.pdf
  ├─ python/index.pdf
  └─ nodejs/index.pdf
template.tex         <- Template LaTeX para Pandoc
Makefile             <- Automação de geração de PDFs
```

> **Nota:** A estrutura de pastas dentro de `src/` é totalmente flexível.
> Você pode criar subpastas como quiser (ex.: `go/`, `frontend/`, `devops/`) e colocar os arquivos Markdown correspondentes.
> O Makefile irá gerar os PDFs na mesma estrutura dentro de `out/`.

---

## ⚡ Funcionalidades

* Gerenciamento de múltiplos currículos em Markdown.
* Geração automática de PDFs com Pandoc e LaTeX.
* Base para vários tipos de automações.

---

## 🚀 Como usar

### 1️⃣ Usando como template do GitHub

Clique no botão **"Use this template"** no GitHub para criar seu próprio repositório baseado neste projeto.
Isso cria uma cópia pronta para você começar a editar sem afetar o projeto original.

### 2️⃣ Linux

1. Clone o repositório:

```bash
git clone https://github.com/JoaoVLima/YetAnotherMarkdownResume.git
cd YetAnotherMarkdownResume
```

2. Instale Pandoc e LaTeX:

```bash
sudo apt-get install pandoc texlive-xetex
```

3. Edite os arquivos Markdown em `src/`.

4. Gere os PDFs:

```bash
make
```

5. Limpar PDFs gerados:

```bash
make clean
```

### 3️⃣ Windows

1. Clone o repositório (pode usar Git Bash ou PowerShell):

```powershell
git clone https://github.com/JoaoVLima/YetAnotherMarkdownResume.git
cd YetAnotherMarkdownResume
```

2. Instale [Pandoc para Windows](https://pandoc.org/installing.html) e uma distribuição LaTeX como [MiKTeX](https://miktex.org/download).

3. Edite os arquivos Markdown em `src/`.

4. Abra Git Bash ou PowerShell e rode:

```powershell
make
```

5. Para limpar PDFs gerados:

```powershell
make clean
```

> **Nota:** No Windows, você pode precisar do [GNU Make para Windows](https://www.gnu.org/software/make/) ou usar Git Bash que já inclui o `make`.

---

## 🎨 Personalização de estilo

* Para alterar fonte, margens ou layout, edite o CSS ou o `template.tex`.

---

## 📄 Licença

[MIT License © João Lima](LICENSE)
