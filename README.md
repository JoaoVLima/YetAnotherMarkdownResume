# 📝 Yet Another Markdown Resume

**Yet Another Markdown Resume** is a template for managing multiple resumes using **Markdown**.
The project generates PDFs from Markdown and allows you to organize different resumes for different jobs or technologies.

The goal is to have a **simple, replicable, and automatable** system that works offline and online and can be easily adapted by anyone on GitHub.

---

## 📁 Project Structure

```
src/                   <- Markdown files for resumes (you create the subfolders and files)
  ├─ resume_1.md       <- Resume (example)
  ├─ java/resume.md    <- Java Resume (example)
  ├─ python/index.md   <- Python Resume (example)
  └─ nodejs/resume2.md <- NodeJS Resume (example)
out/                   <- Automatically generated PDFs
  ├─ resume_1.pdf
  ├─ java/resume.pdf
  ├─ python/index.pdf
  └─ nodejs/resume2.pdf
template.tex           <- LaTeX template for Pandoc
Makefile               <- PDF generation automation
```

> **Note:** The folder structure inside `src/` is completely flexible.
> You can create subfolders as you like (e.g., `go/`, `frontend/`, `devops/`) and place the corresponding Markdown files.
> The Makefile will generate the PDFs in the same structure inside `out/`.

---

## ⚡ Features

* Manage multiple resumes in Markdown.
* Automatically generate PDFs using Pandoc and LaTeX.
* Base for multiple types of automations.

---

## 🚀 How to Use

### 1️⃣ Using as a GitHub Template

Click the **"Use this template"** button on GitHub to create your own repository based on this project.
This creates a ready-to-edit copy without affecting the original project.

### 2️⃣ Linux

1. Clone the repository:

```bash
git clone https://github.com/JoaoVLima/YetAnotherMarkdownResume.git
cd YetAnotherMarkdownResume
```

2. Install Pandoc and LaTeX:

```bash
sudo apt-get install pandoc texlive-xetex
```

3. Edit the Markdown files in `src/`.

4. Generate the PDFs:

```bash
make
```

5. Clean generated PDFs:

```bash
make clean
```

### 3️⃣ Windows

1. Clone the repository (use Git Bash or PowerShell):

```powershell
git clone https://github.com/JoaoVLima/YetAnotherMarkdownResume.git
cd YetAnotherMarkdownResume
```

2. Install [Pandoc for Windows](https://pandoc.org/installing.html) and a LaTeX distribution like [MiKTeX](https://miktex.org/download).

3. Edit the Markdown files in `src/`.

4. Open Git Bash or PowerShell and run:

```powershell
make
```

5. To clean generated PDFs:

```powershell
make clean
```

> **Note:** On Windows, you may need [GNU Make for Windows](https://www.gnu.org/software/make/) or use Git Bash, which already includes `make`.

---

## 🎨 Style Customization

* To change fonts, margins, or layout, edit the CSS or `template.tex`.

---

## 📄 License

[MIT License © João Lima](LICENSE)
