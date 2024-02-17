# product-docs

Welcome to the repository for Jangala's documentation creation system. This is very WIP.

This repository will have a large number of our team working on it. Our Projects and Comms people will be core developers in this process! To assist this process we're developing a friendly and consistent process by which we can all contribute.

## Installation

To make use of this convenience, this section guides you through installing three essential open-source tools: Git, Visual Studio Code (VSCode) and Docker Desktop. Git helps manage shared access to common codebases (like this one!), VSCode is a powerful and versatile code editor that supports a wide range of programming languages and tools, while Docker Desktop will allow us to create and manage isolated development environments called containers.

This setup does involve a few one-time terminal commands, but is straightforward. The payoff is that we can get started with product-docs development quickly and efficiently, using shared graphical tools!

### For MacOS Users

#### Prerequisites

Install Homebrew (an open source software manager) on your Mac by pasting the following command in your Terminal:

  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

#### Steps to Install VSCode and Docker Desktop
1. **Open the Terminal.**

2. **Install Git:**
   ```zsh
   brew install git
   ```

3. **Install Visual Studio Code:**
   ```zsh
   brew install --cask visual-studio-code
   ```

   Note: may take a few minutes to complete
   
4. **Install Docker Desktop:** - may take a few minutes to complete
   ```zsh
   brew install --cask docker
   ```

   Note: may take a few minutes to complete

5. **Launch Docker Desktop:**

   Find Docker in your Applications folder and double-click to launch it. This step is necessary to complete the installation and agree to the terms. _There's no need to create an account._

6. **Verify Installation:**

   Verify that VSCode and Docker Desktop are installed correctly by running the following three commands in Terminal:

   ```zsh
   git --version
   ```

   ```zsh
   code --version
   ```

   ```zsh
   docker --version
   ```

   If all three commands return version numbers, the installation was successful!

### For Windows 10/11 Users

#### Prerequisites

Ensure you are running Windows 11 or a fairly recently updated version of Windows 10 (version 1709, build 16299).

#### Steps to Install Git, VSCode and Docker Desktop
1. **Open Powershell** - Press the Start button, type "Powershell", and press Enter to launch it. 

2. **Install Git:**
   ```powershell
   winget install --id Git.Git -e --source winget
   ```
   
2. **Install Visual Studio Code:**
   ```powershell
   winget install -e --id Microsoft.VisualStudioCode
   ```

   Note: may take a few minutes to complete
   
3. **Install Docker Desktop:** 
   ```powershell
   winget install -e --id Docker.DockerDesktop
   ```

   Note: may take a few minutes to complete (will launch an external installer)

4. **Launch Docker Desktop:**

   Press the Start button, type "Docker Desktop", and press Enter to launch it. Follow the on-screen instructions to complete the setup. _There's no need to create an account._

5. **Verify Installation:**

   Verify that Git, VSCode and Docker Desktop are installed correctly by running:

   ```powershell
   git --version
   ```

   ```powershell
   code --version
   ```

   ```powershell
   docker --version
   ```

   If all commands return version numbers, the installation was successful!

### Final Notes
Ensure Docker Desktop is running before attempting to use VSCode devcontainers.

## Usage

[TBD]

# Ongoing Plan

Currently our plan is as follows:

1. Host our core documentation here as Pandoc-flavoured Markdown
2. Create the online web version using Vitepress to create a Github pages hosted sited at docs.janga.la
3. Process the separate Markdown files into PDF using:
   1. Use Pandoc to create a `.typ` output from the markdown
   2. Use Typst and a Jangala template to create beautiful PDFs!

We should automate this whole process using GitHub actions. So that each commit to the repo regenerates the GH pages site and recreates any PDF's that need changing.

To test the website locally run `npm run docs:dev` from the docs folder.

To build pdfs do `/bin/sh build-getbox-pdf.sh` from the pdf folder.

## Fonts

Add .otf or .ttf to the `/fonts` folder and then run `sh update-fonts.sh` from that same folder.