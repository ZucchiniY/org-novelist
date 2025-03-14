<div align="center">

# Org Novelist

![Release Version](https://img.shields.io/github/tag/sympodius/org-novelist.svg?style=flat-square&label=release&color=58839b)![Latest Release](https://img.shields.io/github/release-date/sympodius/org-novelist?style=flat-square&label=)
![Supports Emacs 28.1 and Higher](https://img.shields.io/badge/Supports-Emacs_28.1_and_Higher-blueviolet.svg?style=flat-square&logo=GNU%20Emacs&logoColor=white)
![Latest Commit](https://img.shields.io/github/last-commit/sympodius/org-novelist/development?style=flat-square)

</div>


### Table of Contents
- [Introduction](#introduction)
- [Design Principles](#design-principles)
- [Install](#install)
  - [Try Without Installing](#try-without-installing)
  - [Simple Install](#simple-install)
  - [Use-package](#use-package)
- [Tutorial](#tutorial)
  - [New Story](#new-story)
  - [Characters](#characters)
  - [Places and Props](#places-and-props)
  - [Chapters](#chapters)
  - [Exporting](#exporting)
- [Advanced Features](#advanced-features)
  - [Custom Note Templates](#custom-note-templates)
  - [Glossary Generator](#glossary-generator)
  - [Index Generator](#index-generator)
  - [Language Packs](#language-packs)
  - [Linked Stories](#linked-stories)
- [Summary of Functions](#summary-of-functions)


# Introduction
Org Novelist is a system for writing novel-length fiction using [Emacs](https://www.gnu.org/software/emacs/) [Org mode](https://orgmode.org/). It works by linking notes to your story text for easy access while writing.

While Org Novelist focuses on making the writing process simpler, it's also easy to share your work by exporting to other formats.


# Design Principles

+ **简单的文本文件。** Org Novelist 中没有专有文件格式。一切都是纯文本。[Org 标记语言](https://orgmode.org/quickstart.html) 提供了格式和结构，同时仍然易于人类理解和使用。没有什么比纯文本更具未来兼容性，因此即使你的软件在遥远的未来不再工作，你的文件仍然可以在任何文本编辑器中使用。这也使得 Org Novelist 的故事非常适合像 [Git](https://git-scm.com/) 这样的版本控制系统。
+ **分而治之的文件管理。** Org Novelist 不会将所有内容存储在一个大型文本文件中，而是将其拆分为合理的文件和目录。通过隐藏不需要的内容，使写作更加易于管理。较小的文本文件集合也改善了与版本控制系统的交互。
+ **设置保存在故事中。** 每个故事文件夹包含 Org Novelist 所需的所有信息。你可以轻松移动和复制故事文件夹以进行存档和备份。而且，由于所有文件都是纯文本，你可以在任何文本编辑器中打开它们。
+ **最小化依赖。** 如果你正确安装了最新版本的 Emacs，Org Novelist 应该可以毫无问题地运行。
+ **语言无关。** 用母语写作会让你感到更舒适。只需创建一个语言包，Org Novelist 的标题、模板甚至错误消息都可以设置为使用任何语言。
+ **一次编写，随处发布。** 默认情况下，Org Novelist 将故事导出为单个 Org 文件。你可以使用 [Pandoc](https://pandoc.org/) 等第三方系统手动将此文件导出为多种其他格式，或使用专门为 Org Novelist 设计的导出模板。当你使用 Org Novelist 导出模板时，系统将同时生成每种输出格式。你的 Org Novelist 故事可以成为发布到任何地方的单一来源。
+ **保持 Emacs 的强大功能。** Org Novelist 与你的其他 Emacs 设置协同工作。如果你已经在使用 Emacs 和 Org 模式，你应该会感觉 Org Novelist 非常熟悉。
+ **有主见的组织方式。** 我根据自己的写作需求设计了 Org Novelist。它应该足够通用，适用于大多数 Emacs 小说家，但它并不是无限灵活的。Org Novelist 通过为你完成繁重的工作，使你的笔记井然有序且易于访问，但偏离这种布局太远会破坏系统。如果你能接受并拥抱这一点，你将会找到故事组织的极乐境界。


# Install
The Org Novelist package requires a correctly installed version of GNU Emacs 28.1 or higher. You can find more information on how to install and use Emacs at the [GNU Emacs website](https://www.gnu.org/software/emacs/).

## Try Without Installing
If you just want to try Org Novelist without making it a permanent part of your Emacs setup, start by downloading the `org-novelist.el` file. Then, in Emacs, open a command buffer with <kbd>M-x</kbd> and run `load-file`. Navigate to `org-novelist.el` and its functions will be available in Emacs for the current session.

## Simple Install
To permanently install Org Novelist on your system, download the `org-novelist.el` file, then edit your [Emacs configuration file](https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html) to include a line like the following, which points to the place you stored `org-novelist.el`:

``` elisp
(load "~/Downloads/org-novelist.el")
```

You may also choose to change the following variables in your Emacs configuration after the load command:

``` elisp
(setq org-novelist-author "John Urquhart Ferguson")  ; The default author name to use when exporting a story. Each story can also override this setting
(setq org-novelist-author-email "mail@johnurquhartferguson.info")  ; The default author contact email to use when exporting a story. Each story can also override this setting
(setq org-novelist-automatic-referencing-p nil)  ; Set this variable to 't' if you want Org Novelist to always keep note links up to date. This may slow down some systems when operating on complex stories. It defaults to 'nil' when not set
```

## Use-package
For users of `use-package`, an entry like the following will setup Org Novelist on your system, after downloading the `org-novelist.el` file:

``` elisp
(use-package org-novelist
  :ensure nil
  :load-path "~/Downloads/"  ; The directory containing 'org-novelist.el'
  :custom
    (org-novelist-author "John Urquhart Ferguson")  ; The default author name to use when exporting a story. Each story can also override this setting
    (org-novelist-author-email "mail@johnurquhartferguson.info")  ; The default author contact email to use when exporting a story. Each story can also override this setting
    (org-novelist-automatic-referencing-p nil))  ; Set this variable to 't' if you want Org Novelist to always keep note links up to date. This may slow down some systems when operating on complex stories. It defaults to 'nil' when not set
```

# Tutorial
In order to learn the system, let us create an Org Novelist story. As usual, all these Org Novelist functions can be used by bringing up a command buffer with <kbd>M-x</kbd> .

## New Story
Start a new story by getting Org Novelist to create a skeleton project. This can be done with the command: `org-novelist-new-story`

You will then be prompted to enter a name for your story.

After the name is set, you will be asked where to save the story folder.

You will now have a new buffer, `main.org`. This file is the entry point for your story and contains links to the other sections and files that you will use. You can write a brief summary of your story here if you like, but it is purely for your own reference. The only parts of this file that must be left unchanged are the first line (which lets Emacs know this is an Org Novelist file), and the first header line (which let's Org Novelist know what the story is called).

If you wish to rename your story, it is better to use the command: `org-novelist-rename-story`

This will save you having to go through every file that references the story name and manually changing it. It will also give you the option to rename the story folder to match your new title.

It is also worth noting that when an Org Novelist file does not have a `#+TITLE:` value, it indicates that this file should largely be left untouched by the user.

For now, follow some of the links to explore the skeleton story. All files link back to one another (apart from Export Settings), so it's hard to reach a dead-end. The Org Novelist commands can be run while any story file is in the current buffer (you do not need to return to `main.org` to run more Org Novelist commands as long as the current buffer is part of your story).

The `Notes` and `Research` files will not be cross referenced with the main story text, so you can write whatever you like in them. They are especially useful for the early planning stages and for notes that don't quite fit anywhere else. As with all files, do not remove the top line indicating this is an Org Novelist story, and don't remove the `#+TITLE:` or first heading lines.

## Characters
Let us now add your first character to the story with the command: `org-novelist-new-character`

Enter a name for your character when prompted, then you will be taken to the character index file. Your new character will now appear in the index as a new heading. You may also notice that this file does not contain a `#+TITLE:` line, indicating that you shouldn't mess with its layout too much. The heading for your new character will also be marked as `TODO`. This is a feature of Org mode to let you know that you still have to work on this character. You can cycle through the options when required by keeping the cursor on the heading and running the command `org-todo` multiple times to set the state of your progress.

For now, let us follow the link to open the character file. The character file template will include a number of prompts that you can choose to fill in or ignore at your pleasure. You are also free to edit anything after the first heading line (initially, this will be placed on the third line of the file).

If you have automatic referencing turned on, you may also see a section at the bottom called `Appearances in Chapters`. This section is generated automatically by Org Novelist and you should not feel the need to edit it manually. If you don't have automatic referencing turned on, but would like to update the references at any time, just run the command: `org-novelist-update-references`

This will update all references in the entire story for all known files. You can also toggle automatic referencing on or off by running the command: `org-novelist-toggle-automatic-referencing`

Whenever you use the name of a character in your story, it will provide a link to a glossary, which will then link back to the relevant notes file.

But let's say that you don't like the character's name any more and want to change it. You can update your notes with a new name by running the command: `org-novelist-rename-character`

After selecting which character you want to change and then giving the new name, you will return to the character index showing the update. If you follow the link from the new character name, you'll see all your notes intact, but with a new name applied next to `#+TITLE:`

You might also have spotted that there is a new line at the top called `#+ALIASES:` which contains the previous name of your character. Org Novelist will not attempt to rename the character within the main text of your story in case you've used a name which could apply to multiple things. Instead, aliases allow the old name to continue linking back to this notes file. From here, you can see all the appearances of the old name in your story and visit each one before updating it.

You can also manually add your own terms to the character's aliases, or remove the old ones if you don't want them any more. Just separate each term after the `#+ALIASES:` property with a comma. This can be especially useful if you've given your character a first and last name, but will mainly be using just their first name (or a nickname) in your story text.

Remember that automatic referencing will always keep the notes and glossary references up to date, but if you have this turned off you can always manually update the references by running: `org-novelist-update-references`

If you completely change your mind about a character and want to remove all their notes, Org Novelist provides the command: `org-novelist-destroy-character`

When you run this command and select a character to delete, Org Novelist will present you with each file it is about to irrevocably remove from the system to confirm that you are happy to delete it. You must type in `yes` or `no` each time. Whether you choose to keep the note files or not, the appropriate entry will be removed from the character index. If you did keep the files, then you can still link to them from their references in the main story text. If you want to keep the old character files, but not have the story text link to them, the easiest solution would be moving the old character files from your story folder and storing them somewhere else. Another option would be to delete the `#+TITLE:` and `#+ALIASES:` lines in the old character notes files, or change them to something else like, `#+OLD-TITLE:` and `#+OLD-ALIASES:` so that they will no longer be found when the references are updated.

Running the destroy function will not change any of your story's main text. In fact, none of Org Novelist's functions will touch your main story text. As such, you can be confident that you alone have the power to edit your story's content, and Org Novelist simply helps you manage and access your notes.

## Places and Props
In addition to character notes, Org Novelist also supports notes for places. Place notes will behave exactly the same way as character notes. The only difference is the starting template you are presented with.

You can create, rename, and remove location notes from your story with the commands: `org-novelist-new-place`, `org-novelist-rename-place`, and `org-novelist-destroy-place`

Any other notes that you would like to link to in the same way as characters and places can be added as props. These behave exactly the same way, but have a minimal starting template. While this could include actual props relevant to the story, it's really for any other notes that you'd like your story text to automatically link to.

You can create, rename, and remove prop notes from your story with the commands: `org-novelist-new-prop`, `org-novelist-rename-prop`, and `org-novelist-destroy-prop`

## Chapters
Now that you have developed notes for your story, you can start writing some actual content.

Org Novelist stories consist of chapters, with each chapter classed as one of three matter types. These are `front matter`, `main matter`, and `back matter`.

Chapters that exist before the main story (such as a preface or foreword) are usually put in front matter.

The main story chapters usually get put into main matter.

Back matter is for chapters that would come after the main story text (things like an epilogue, or perhaps an acknowledgements section).

In terms of writing, how you class your chapters does not matter. However, Org Novelist export templates may make use of this information to format the matter types differently from each other. Don't feel overburdened by this decision; you can easily change a chapter's matter type by moving its header into the correct section of the chapter index file.

Let's create a new chapter with the command: `org-novelist-new-chapter`

You will be prompted to enter a chapter name. Although you may not wish to use chapter names, this is a requirement of Org Novelist while writing. However, export templates can be created to drop these names if required. If you are writing a story with only a single chapter, I would suggest putting it into `front matter`, as this section is the least likely to have complex formatting in an export template.

After entering a name, you will be asked to choose a matter type, and then your new chapter will appear in the chapter index, marked as `TODO` just like when you added your note files. Following the link will open up your new chapter. You should restrict all your text within the `Content` section and use [Org mark-up](https://orgmode.org/quickstart.html) to format it.

If you have automatic referencing turned on, you should see a `Glossary` at the bottom of the file, containing links to all the note files you have created so far. If you have automatic referencing turned off, you can always manually update the references by running: `org-novelist-update-references`

Additionally, you can also toggle automatic referencing on or off by running the command: `org-novelist-toggle-automatic-referencing`

With the glossary in place, whenever you use the name or alias for anything that has a notes file, the text will turn into a link to that entry in the glossary. Once at the correct location in the glossary, you can link to the associated notes file. If you prefer to go back to the point in the text you just linked from, simply hit <kbd>C-u C-SPC</kbd>  (or <kbd>SPC u C-SPC</kbd> for [Evil](https://github.com/emacs-evil/evil) users).

If you have automatic referencing turned on, then every time you save your main text, the note files will be updated to reference all lines of text in which they appear, allowing you to quickly link to that point in your story.

Going back to the chapter file, you should see a link at the top to `Notes` for the chapter. This is the only link to these notes. They are useful if you want to make notes on a chapter without cluttering the main chapter file.

Similar to other files in Org Novelist, there is a command to rename a chapter: `org-novelist-rename-chapter`

And, again, a command to delete a chapter: `org-novelist-destroy-chapter`

When deleting a chapter, you will be asked to confirm deleting both the main chapter file, and the associated notes.

The last thing you need to know about chapters is that the order they are listed in the chapter index is the order that they will be exported. The exception to this is that all chapters in the front matter will appear ahead of the main matter, which will appear ahead of the back matter.

## Exporting
Org Novelist can export a story to a single Org file. This can then be fed into third party systems like [Pandoc](https://pandoc.org/), or [Org mode's built-in export functions](https://orgmode.org/manual/Exporting.html) to save to other formats.

Another option is to write new export templates and add them to the export list in the story settings file at `org-novelist-config.org`

Whether you use the `org-novelist-config.org` file or not, you should never rename or move it from its position in your story folder. Org Novelist uses this to identify the folder as an Org Novelist story.

Let's write a couple of simple export templates and add them to your story. First, create a file called `org-latex-export-to-pdf.el` inside the `Exports` folder of your story, with the following contents:

``` elisp
;;; org-latex-export-to-pdf.el --- Org Novelist example export template to PDF -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(require 'org)


;;;; Required Entry Point Function for Org Novelist Export

(defun org-novelist--export-template (org-input-file output-file)
  "Given an ORG-INPUT-FILE from Org Novelist, export to OUTPUT-FILE."
  (let ((org-export-with-toc-orig nil)
    (org-export-with-title-orig nil)
    (org-export-with-author-orig nil)
    (org-export-with-email-orig nil)
    (org-export-with-date-orig nil)
    (org-export-with-latex-orig nil))
    (when (boundp 'org-export-with-toc)
      (setq org-export-with-toc-orig org-export-with-toc))
    (when (boundp 'org-export-with-title)
      (setq org-export-with-title-orig org-export-with-title))
    (when (boundp 'org-export-with-author)
      (setq org-export-with-author-orig org-export-with-author))
    (when (boundp 'org-export-with-email)
      (setq org-export-with-email-orig org-export-with-email))
    (when (boundp 'org-export-with-date)
      (setq org-export-with-date-orig org-export-with-date))
    (when (boundp 'org-export-with-latex)
      (setq org-export-with-latex-orig org-export-with-latex))
    (setq org-export-with-toc t)
    (setq org-export-with-title t)
    (setq org-export-with-author t)
    (setq org-export-with-email t)
    (setq org-export-with-date t)
    (setq org-export-with-latex t)
    (find-file org-input-file)
    (org-latex-export-to-pdf)
    (setq org-export-with-toc org-export-with-toc-orig)
    (setq org-export-with-title org-export-with-title-orig)
    (setq org-export-with-author org-export-with-author-orig)
    (setq org-export-with-email org-export-with-email-orig)
    (setq org-export-with-date org-export-with-date-orig)
    (setq org-export-with-latex org-export-with-latex-orig)
    (make-directory (file-name-directory output-file) t)
    (rename-file (concat (file-name-sans-extension org-input-file) ".pdf") output-file t)
    (rename-file (concat (file-name-sans-extension org-input-file) ".tex") (concat (file-name-sans-extension output-file) ".tex") t)))

(provide 'org-latex-export-to-pdf)
;;; org-latex-export-to-pdf.el ends here
```

This is a simple wrapper for Org mode's built-in `org-latex-export-to-pdf` function, and will turn the story into a cleanly formatted PDF file. Org Novelist will run any code you place within the `org-novelist--export-template` function for whatever template file you create. As input, it takes the complete file name of the single Org file that Org Novelist export made, as well as the location of where you want the main output file to be. Most of this code is just turning on the variables that you want the built-in Org function to use, and then setting them back to their original values when the export finishes.

Let's make a second export template for an odt file. Create a file called `org-odt-export-to-odt.el` with the following contents:

``` elisp
;;; org-odt-export-to-odt.el --- Org Novelist example export template to ODT -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(require 'org)


;;;; Required Entry Point Function for Org Novelist Export

(defun org-novelist--export-template (org-input-file output-file)
  "Given an ORG-INPUT-FILE from Org Novelist, export to OUTPUT-FILE."
  (let ((org-export-with-toc-orig nil)
    (org-export-with-title-orig nil)
    (org-export-with-author-orig nil)
    (org-export-with-email-orig nil)
    (org-export-with-date-orig nil)
    (org-odt-styles-file-orig nil))
    (when (boundp 'org-export-with-toc)
      (setq org-export-with-toc-orig org-export-with-toc))
    (when (boundp 'org-export-with-title)
      (setq org-export-with-title-orig org-export-with-title))
    (when (boundp 'org-export-with-author)
      (setq org-export-with-author-orig org-export-with-author))
    (when (boundp 'org-export-with-email)
      (setq org-export-with-email-orig org-export-with-email))
    (when (boundp 'org-export-with-date)
      (setq org-export-with-date-orig org-export-with-date))
    (when (boundp 'org-odt-styles-file)
      (setq org-odt-styles-file-orig org-odt-styles-file))
    (setq org-export-with-toc t)
    (setq org-export-with-title t)
    (setq org-export-with-author t)
    (setq org-export-with-email t)
    (setq org-export-with-date t)
    (setq org-odt-styles-file nil)
    (find-file org-input-file)
    (org-odt-export-to-odt)
    (setq org-odt-styles-file org-odt-styles-file-orig)
    (setq org-export-with-toc org-export-with-toc-orig)
    (setq org-export-with-title org-export-with-title-orig)
    (setq org-export-with-author org-export-with-author-orig)
    (setq org-export-with-email org-export-with-email-orig)
    (setq org-export-with-date org-export-with-date-orig)
    (make-directory (file-name-directory output-file) t)
    (rename-file (concat (file-name-sans-extension org-input-file) ".odt") output-file t)))

(provide 'org-odt-export-to-odt)
;;; org-odt-export-to-odt.el ends here
```

Again, this is just a wrapper for Org mode's built-in `org-odt-export-to-odt` function, and will create a cleanly formatted ODT file.

Now that you have your templates set up, you need to tell Org Novelist to use them. From you story's `main.org` file, follow the link to `Export Settings`. The new file will be blank (apart from the Org Novelist mode declaration), but you can fill it with these contents:

```
; -*-Org-Novelist-*-
* Exports
** [[file:Exports/Basic-ODT/ExportedStoryName.odt][Basic ODT]]
Exports/org-odt-export-to-odt.el
** [[file:Exports/Basic-PDF/ExportedStoryName.pdf][Basic PDF]]
Exports/org-latex-export-to-pdf.el
```

You can change `ExportedStoryName` to whatever you'd like the output files to be called. The directory before that is where the file will be saved. It doesn't need to be relative to your main story folder, but keeping it relative will make it easier to move and store the story folder elsewhere if you need to. The line under the heading is the location of the export template file. To ensure the output will be reproducible, storing the template in the story folder like this will be better. However, if you wish to use the same export template for multiple stories and only update it in one place, it might be easier for all your stories to link to the same file. Either way, the choice is yours.

Save the file, and then run the following command: `org-novelist-export-story`

You will be presented with a new buffer containing your whole story in one Org file.

Additionally, you should now have two exported files in two new folders within your story's `Exports` folder. You can add as many output formats as you like using this system. Other example templates can be found at [https://github.com/sympodius/org-novelist-export-templates/](https://github.com/sympodius/org-novelist-export-templates/)

On the subject of keeping output files reproducible, you can also lock the title, author, author email, and date of any story. This is also useful if you want to publish something using a different name and email than what you set as the Org Novelist default for your stories. Change the export settings file to something like this:

```
; -*-Org-Novelist-*-
#+TITLE: A Totally Different Story Name
#+AUTHOR: A. D. Ifferent-Author
#+EMAIL: pseudo@nym-email.com
#+DATE: [2023-03-17 Fri 12:00]
* Exports
** [[file:Exports/Basic-ODT-en-GB/ExportedStoryName.odt][Basic ODT en-GB]]
Exports/org-odt-export-to-odt-en-gb.el
** [[file:Exports/Basic-PDF-en-GB/ExportedStoryName.pdf][Basic PDF en-GB]]
Exports/org-latex-export-to-pdf-en-gb.el
```

From now on, running `org-novelist-export-story` will use these settings for the title, author, author email, and date, no matter what else is set in the story files, or the global Org Novelist settings. If you only want to override some of these, you obviously don't need to include the others.

This ends the tutorial for the main features of Org Novelist. I designed this system for myself, but I hope it proves useful to you. The main goal has always been to help make the boring stuff easier so that you can spend more time on writing. I sincerely hope it helps make your writing more enjoyable.


# Advanced Features
Although the above tutorial covers all the basic components of operating Org Novelist. There are a few additional features that the more dedicated user may wish to explore.

## Custom Note Templates
It's possible to override the default note templates that are presented when you create a new chapter, character, place, or prop. Doing so will override the defaults for all newly created notes of these types in all stories, but will have no effect on existing notes. The four relevant variables to set are `org-novelist-user-chapter-notes-content`, `org-novelist-user-character-notes-content`, `org-novelist-user-place-notes-content`, and `org-novelist-user-prop-notes-content`. You can override as many or as few of these as you like. If you want to permanently set these variables for future Emacs sessions, you can edit your [Emacs configuration file](https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html) to include entries like the following (just above the location that you might have set the `org-novelist-author` variable):

``` elisp
(setq org-novelist-user-chapter-notes-content
  (concat
   "Show how this chapter contributes to:\n"
   "** The Rise of the Dragon King\n"
   "** The General Malaise of Existence\n"
   "** Promoting the Use of Emacs for Novel Writing\n"))  ; The new note template that will be presented when creating a new chapter in all stories.

(setq org-novelist-author "John Urquhart Ferguson")  ; The default author name to use when exporting a story. Each story can also override this setting
(setq org-novelist-author-email "mail@johnurquhartferguson.info")  ; The default author contact email to use when exporting a story. Each story can also override this setting
(setq org-novelist-automatic-referencing-p nil)  ; Set this variable to 't' if you want Org Novelist to always keep note links up to date. This may slow down some systems when operating on complex stories. It defaults to 'nil' when not set
```

You can return to generating the default templates by removing this line from your Emacs configuration file and restarting Emacs, or set the value to `nil` before creating more notes.

## Glossary Generator
When exporting, Org Novelist has the capability to generate glossaries of the characters, places, and props in your story. This is a two step procedure, requiring you to tell Org Novelist which items you want to include in the glossaries, and where you want the glossaries to be placed in your exported file.

### Include Items in Glossaries
In the notes file for a character, place, or prop, underneath the `#+TITLE:` line, add the following line:

```
#+ADD_TO_GENERATORS: glossary
```

You can also add a description of the item on the next line. This will replace the default description for the item when Org Novelist generates its entry in the glossary during export:

```
#+DESCRIPTION: A castle on the banks of the river Clyde.
```

Org Novelist now knows that you want this item included when generating glossaries for your story during export. Next, you must tell Org Novelist where in your exported file you want your glossaries to appear.

### Place Glossaries
To place a glossary for the entire story at the end of the exported file, you can add an instruction in your story's `org-novelist-config.org` file. From you story's `main.org` file, follow the link to `Export Settings`. Underneath the top line specifying this is an Org Novelist file, and above a possible `Exports` heading, add the following line:

```
#+GENERATE: glossary
```

Now, when you export the story with `org-novelist-export-story`, there will be a glossary at the end of the file, including names, aliases, and descriptions of all the characters, places, and props which you have tagged for inclusion.

It is also possible to include chapter level glossaries in your exported file. These will appear at the end of the chapters you select, and will only include your selected glossary items when they also appear in that chapter. The procedure to generate an exported chapter level glossary is similar to the one for the entire story. This time, however, just open the chapter file where you would like to add an export glossary. At the top of the file, underneath the `#+TITLE:` line, add the following:

```
#+GENERATE: glossary
```

Now, after exporting, there will be a glossary at the end of this chapter as well, including only the items that appeared in that chapter. Again, it will only try to add items you have already marked for inclusion.

You can make export glossaries for as many or as few of your chapters as you like. Also, note that story and chapter glossaries are independent of each other, and you can use them in any combination that suits you.

## Index Generator
When exporting, Org Novelist can also mark the exported Org file with information for creating an index. Org Novelist itself will not generate the final index, as this will be dependent on export templates and the final published form of the story. If you wish to see an example of how this will end up, you can check out the *Cubes* PDF and ePub export templates at [https://github.com/sympodius/org-novelist-export-templates/](https://github.com/sympodius/org-novelist-export-templates/), both of which generate Indices for stories when required using the information Org Novelist generates on export.

As with the glossaries, this is a two step process. First, you must mark the notes files of characters, places, and props which you would like to include in any indices. As before, open the notes file for your chosen character, place, or prop, and add a line under `#+TITLE` which reads:

```
#+ADD_TO_GENERATORS: index
```

Or, if your item is already marked for inclusion in a glossary, just add `index` to the line after a comma, like so:

```
#+ADD_TO_GENERATORS: glossary, index
```

The second step is also the same as with glossaries. To include a story level index, add `index` to the `#+GENERATE:` line of your story's `org-novelist-config.org` file. To place an index at the end of a chapter, add `index` to the `#+GENERATE:` line of the chosen chapter file.

After exporting, your final Org file will now include a number of `#+ORG_NOVELIST_INDEX_ENTRY:` lines for each item (and all its aliases) you have selected for inclusion in indices. At the end of your selected chapters, you will also find `#+LATEX: \printindex` lines. These will be used by Org Novelist export templates to generate indices for your story and place them in the correct locations.

Unlike with glossaries, however, a complete index will be placed every time it is used, and will not be limited to items which only appear in the given chapter.

## Language Packs
The Org Novelist interface has the ability to work in other languages. By default, the language is set to `en-GB`, but this can be changed by downloading and applying language packs.

If you wish to change the language from `en-GB`, you will also have to download the `language-packs` folder and store it in the same directory as `org-novelist.el`. The currently supported languages are:

+ **en-GB** - English as used in The United Kingdom of Great Britain and Northern Ireland (UK) [the default setting for Org Novelist - created and maintained by [John Urquhart Ferguson](https://johnurquhartferguson.info)]
+ **en-US** - English as used in The United States of America (USA) [created and maintained by [John Urquhart Ferguson](https://johnurquhartferguson.info)]
+ **de-DE** - German as used in The Federal Republic of Germany (Bundesrepublik Deutschland) [created and maintained by [John Urquhart Ferguson](https://johnurquhartferguson.info) & Roxana Schumann]

After putting the `language-packs` folder in the correct location, you can change the `org-novelist-language-tag` variable from `en-GB` to one of the other options above. If you want to permanently set the language, you can edit your [Emacs configuration file](https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html) to include a line like the following, just above the location that you might have set the `org-novelist-author` variable:

``` elisp
(setq org-novelist-language-tag "de-DE")  ; The interface language for Org Novelist to use. It defaults to 'en-GB' when not set
(setq org-novelist-author "John Urquhart Ferguson")  ; The default author name to use when exporting a story. Each story can also override this setting
(setq org-novelist-author-email "mail@johnurquhartferguson.info")  ; The default author contact email to use when exporting a story. Each story can also override this setting
(setq org-novelist-automatic-referencing-p nil)  ; Set this variable to 't' if you want Org Novelist to always keep note links up to date. This may slow down some systems when operating on complex stories. It defaults to 'nil' when not set
```

Whatever language you set will determine the language for your new Org Novelist stories. You can easily change this variable before creating new stories, but existing stories will always open in their original language.

You might also wish to change the Org Novelist mode menu to your own language, or replace the Org Novelist function names with ones from your own language. An example for `de-DE` would be to add the following lines in your Emacs configuration file, beneath the instruction to load `org-novelist.el`:

``` elisp
;; Create de-DE aliases for the Org Novelist functions.
(defalias 'org-novelist-neue-geschichte 'org-novelist-new-story)
(defalias 'org-novelist-neues-kapitel 'org-novelist-new-chapter)
(defalias 'org-novelist-kapitel-ioeschen 'org-novelist-destroy-chapter)
(defalias 'org-novelist-kapitel-umbenennen 'org-novelist-rename-chapter)
(defalias 'org-novelist-neuer-charakter 'org-novelist-new-character)
(defalias 'org-novelist-charakter-ioeschen 'org-novelist-destroy-character)
(defalias 'org-novelist-charakter-umbenennen 'org-novelist-rename-character)
(defalias 'org-novelist-neuer-bestandteil 'org-novelist-new-prop)
(defalias 'org-novelist-bestandteil-ioeschen 'org-novelist-destroy-prop)
(defalias 'org-novelist-bestandteil-umbenennen 'org-novelist-rename-prop)
(defalias 'org-novelist-neuer-ort 'org-novelist-new-place)
(defalias 'org-novelist-ort-ioeschen 'org-novelist-destroy-place)
(defalias 'org-novelist-ort-umbenennen 'org-novelist-rename-place)
(defalias 'org-novelist-verweise-aktualisieren 'org-novelist-update-references)
(defalias 'org-novelist-geschichte-umbenennen 'org-novelist-rename-story)
(defalias 'org-novelist-geschichte-exportieren 'org-novelist-export-story)
(defalias 'org-novelist-verknuepfung-zu-geschichte 'org-novelist-link-to-story)
(defalias 'org-novelist-verknuepfung-zu-geschichte-aufloesen 'org-novelist-unlink-from-story)
(defalias 'org-novelist-automatische-verweise-umschalten 'org-novelist-toggle-automatic-referencing)

;; Replace the Org Novelist menu with a de-DE equivalent.
(easy-menu-define org-novelist-menu org-novelist-mode-map "Org Novelist menu."
  `("Org Novelist"
    ("Geschichte"
     ["Neue Geschichte..." org-novelist-new-story t]
     ["Geschichte umbenennen..." org-novelist-rename-story t]
     ["Geschichte exportieren" org-novelist-export-story t])
    ("Kapitel"
     ["Neues Kapitel..." org-novelist-new-chapter t]
     ["Kapitel umbenennen..." org-novelist-rename-chapter t]
     ["Kapitel löschen..." org-novelist-destroy-chapter t])
    ("Notizen"
     ("Charaktere"
      ["Neuer Charakter..." org-novelist-new-character t]
      ["Charakter umbenennen..." org-novelist-rename-character t]
      ["Charakter löschen..." org-novelist-destroy-character t])
     ("Bestandteile"
      ["Neuer Bestandteil..." org-novelist-new-prop t]
      ["Bestandteil umbenennen..." org-novelist-rename-prop t]
      ["Bestandteil löschen..." org-novelist-destroy-prop t])
     ("Orte"
      ["Neuer Ort..." org-novelist-new-place t]
      ["Ort umbenennen..." org-novelist-rename-place t]
      ["Ort löschen..." org-novelist-destroy-place t])
     ("Verknüpfte Geschichten"
      ["Verknüpfung zu Geschichte..." org-novelist-link-to-story t]
      ["Verknüpfung zu Geschichte auflösen..." org-novelist-unlink-from-story t]))
    ("Verweise"
     ["Verweise aktualisieren" org-novelist-update-references t]
     ["Automatische Verweise umschalten" org-novelist-toggle-automatic-referencing t])))
```

A complete `use-package` version of the above might look something like this:

``` elisp
(use-package org-novelist
  :ensure nil
  :load-path "~/Downloads/"  ; The directory containing 'org-novelist.el'
  :custom
    (org-novelist-language-tag "de-DE")  ; The interface language for Org Novelist to use. It defaults to 'en-GB' when not set
    (org-novelist-author "John Urquhart Ferguson")  ; The default author name to use when exporting a story. Each story can also override this setting
    (org-novelist-author-email "mail@johnurquhartferguson.info")  ; The default author contact email to use when exporting a story. Each story can also override this setting
    (org-novelist-automatic-referencing-p nil)  ; Set this variable to 't' if you want Org Novelist to always keep note links up to date. This may slow down some systems when operating on complex stories. It defaults to 'nil' when not set
  :init
    ;; Create de-DE aliases for the Org Novelist functions.
    (defalias 'org-novelist-neue-geschichte 'org-novelist-new-story)
    (defalias 'org-novelist-neues-kapitel 'org-novelist-new-chapter)
    (defalias 'org-novelist-kapitel-ioeschen 'org-novelist-destroy-chapter)
    (defalias 'org-novelist-kapitel-umbenennen 'org-novelist-rename-chapter)
    (defalias 'org-novelist-neuer-charakter 'org-novelist-new-character)
    (defalias 'org-novelist-charakter-ioeschen 'org-novelist-destroy-character)
    (defalias 'org-novelist-charakter-umbenennen 'org-novelist-rename-character)
    (defalias 'org-novelist-neuer-bestandteil 'org-novelist-new-prop)
    (defalias 'org-novelist-bestandteil-ioeschen 'org-novelist-destroy-prop)
    (defalias 'org-novelist-bestandteil-umbenennen 'org-novelist-rename-prop)
    (defalias 'org-novelist-neuer-ort 'org-novelist-new-place)
    (defalias 'org-novelist-ort-ioeschen 'org-novelist-destroy-place)
    (defalias 'org-novelist-ort-umbenennen 'org-novelist-rename-place)
    (defalias 'org-novelist-verweise-aktualisieren 'org-novelist-update-references)
    (defalias 'org-novelist-geschichte-umbenennen 'org-novelist-rename-story)
    (defalias 'org-novelist-geschichte-exportieren 'org-novelist-export-story)
    (defalias 'org-novelist-verknuepfung-zu-geschichte 'org-novelist-link-to-story)
    (defalias 'org-novelist-verknuepfung-zu-geschichte-aufloesen 'org-novelist-unlink-from-story)
    (defalias 'org-novelist-automatische-verweise-umschalten 'org-novelist-toggle-automatic-referencing)
  :config
    ;; Replace the Org Novelist menu with a de-DE equivalent.
    (easy-menu-define org-novelist-menu org-novelist-mode-map "Org Novelist menu."
      `("Org Novelist"
        ("Geschichte"
          ["Neue Geschichte..." org-novelist-new-story t]
          ["Geschichte umbenennen..." org-novelist-rename-story t]
          ["Geschichte exportieren" org-novelist-export-story t])
        ("Kapitel"
          ["Neues Kapitel..." org-novelist-new-chapter t]
          ["Kapitel umbenennen..." org-novelist-rename-chapter t]
          ["Kapitel löschen..." org-novelist-destroy-chapter t])
        ("Notizen"
          ("Charaktere"
            ["Neuer Charakter..." org-novelist-new-character t]
            ["Charakter umbenennen..." org-novelist-rename-character t]
            ["Charakter löschen..." org-novelist-destroy-character t])
          ("Bestandteile"
            ["Neuer Bestandteil..." org-novelist-new-prop t]
            ["Bestandteil umbenennen..." org-novelist-rename-prop t]
            ["Bestandteil löschen..." org-novelist-destroy-prop t])
          ("Orte"
            ["Neuer Ort..." org-novelist-new-place t]
            ["Ort umbenennen..." org-novelist-rename-place t]
            ["Ort löschen..." org-novelist-destroy-place t])
        ("Verknüpfte Geschichten"
          ["Verknüpfung zu Geschichte..." org-novelist-link-to-story t]
          ["Verknüpfung zu Geschichte auflösen..." org-novelist-unlink-from-story t]))
        ("Verweise"
          ["Verweise aktualisieren" org-novelist-update-references t]
          ["Automatische Verweise umschalten" org-novelist-toggle-automatic-referencing t]))))
```

## Linked Stories

有时，你可能会在同一个故事宇宙中撰写多部小说。虽然 Org Novelist 仅设计用于处理单个小说，但它允许你在引用时包含另一个故事的笔记。所有笔记将保留在原位，附属于创建它们的故事，但当这些名称出现在你的主文本中时，链接仍然会像它们是你当前故事的本地内容一样工作。此外，笔记文件将显示它在其中出现的新故事的引用，以及它原始故事的引用。最后，这将允许你在当前故事的术语表和索引生成器中包含来自其他故事的笔记。然而，链接故事的笔记不会出现在当前故事的笔记索引中。

为了将当前故事与之前的故事链接起来，你可以运行命令 `org-novelist-link-to-story`。这将提示你选择早期故事所在的文件夹。

选择后，Org Novelist 将带你进入新创建的链接故事索引，显示你刚刚添加的故事。点击链接将带你进入旧故事的主文件。你可能会注意到，该文件现在将包含一个指向其自身链接故事的条目。在其链接故事索引中，你将找到你的原始故事。通过这种方式，Org Novelist 总是双向链接故事。这意味着，如果你在旧故事中进行编辑并决定包含来自新故事的角色，新笔记也可以从旧故事中访问。

你可能还会注意到，你的 `org-novelist-config.org` 文件现在包含一个名为 `#+LINKED_STORIES:` 的新属性，显示链接故事所在的相对文件夹。链接故事的 `org-novelist-config.org` 文件将包含一个类似的条目，显示你当前故事的相对文件夹。实际上，Org Novelist 使用这些属性来处理共享笔记。链接故事索引仅是为了方便你使用。如果你愿意，你可以完全忽略 `org-novelist-link-to-story` 命令，仅通过编辑 `org-novelist-config.org` 文件来链接故事。这也使得单向链接成为可能，但不推荐这样做，因为笔记文件不会显示它们在所有使用故事中的出现情况。

你可以自由地将你的故事与任意多个之前的故事链接起来。然而，添加的链接越多，引用处理的速度就会越慢。你还应该记住，如果你链接到一个故事，你不仅可以访问该故事的笔记，还可以访问它链接到的所有故事的笔记。这允许你创建共享笔记的故事池，同时仍然将笔记文件存储在创建它们的故事中。

如果你希望取消链接一个故事并不再共享其笔记，你可以编辑 `org-novelist-config.org` 文件，或使用命令：`org-novelist-unlink-from-story`。

# Summary of Functions
+ `org-novelist-new-story` - Setup the skeleton files for a new story.
+ `org-novelist-new-chapter` - Add a new chapter to the current story.
+ `org-novelist-destroy-chapter` - Delete the files and index entry for a chapter in the current story.
+ `org-novelist-rename-chapter` - Rename a chapter in the current story.
+ `org-novelist-new-character` - Add notes for a character to the current story.
+ `org-novelist-destroy-character` - Delete the notes and index entry for a character in the current story.
+ `org-novelist-rename-character` - Rename the notes and index entry for a character in the current story.
+ `org-novelist-new-prop` - Add notes for a prop to the current story.
+ `org-novelist-destroy-prop` - Delete the notes and index entry for a prop in the current story.
+ `org-novelist-rename-prop` - Rename the notes and index entry for a prop in the current story.
+ `org-novelist-new-place` - Add notes for a place to the current story.
+ `org-novelist-destroy-place` - Delete the notes and index entry for a place in the current story.
+ `org-novelist-rename-place` - Rename the notes and index entry for a place in the current story.
+ `org-novelist-update-references` - Force a system update of notes references.
+ `org-novelist-rename-story` - Rename a story and, optionally, its directory.
+ `org-novelist-export-story` - Export the story to a single Org file, and any other formats specified in export settings.
+ `org-novelist-link-to-story` - Link to a different story to include its notes in the current story's referencing.
+ `org-novelist-unlink-from-story` - Remove a linked story from the current story.
+ `org-novelist-toggle-automatic-referencing` - Toggle automatic referencing on/off.
