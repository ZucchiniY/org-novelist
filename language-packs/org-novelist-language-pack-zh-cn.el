;;; org-novelist-language-pack-zh-cn.el --- Org Novelist language pack for zh-CN (简体中文) -*- lexical-binding: t; -*-

;; Language pack for Org Novelist.
;; Copyright (c) 2025 Dylan Yang
;;
;; Author: DylanYang <banshiliuli1990@sina.com>
;; Maintainer: DylanYang <banshiliuli1990@sina.com>
;; Keywords: fiction, writing, outlines, languages, translation
;; Prefix: org-novelist
;; Package-Requires: ((emacs "28.1") (org "9.5.5"))

;; Version 0.0.3

;; This file is not part of GNU Emacs.
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see https://www.gnu.org/licenses/.

;;; Commentary:
;;
;; Org Novelist is a methodology for writing novel-length fiction using
;; Org mode within Emacs. It involves creating and laying out Org mode
;; files such that notes and plans can be easily created and quickly
;; accessed while writing the main text of a story. Org Novelist's
;; secondary function is the ability to use this known structure to
;; easily export and publish stories to other formats. This package
;; supplies a language pack for English, as spoken in America, to be
;; used with Org Novelist.
;;
;; Creating, linking, and laying out files in the Org Novelist
;; methodology can be done without the use of Emacs or the Org Novelist
;; package, but using the package within Emacs will provide helper
;; functions that make the methodology much easier to use; allowing the
;; following of links, programmatic updating of cross-references, and
;; the ability to programmatically export to other formats.
;;
;; Installation, Activation, and Documentation
;; -------------------------------------------
;; See the corresponding section of the website at
;;
;;   https://johnurquhartferguson.info
;;
;;; Code:

;;;; Require other packages

(require 'org-novelist)  ; Org Novelist string manipulation functions should be available for use in language packs


;;;; 简体中文(zh-CN)
;; User Variable Fallback Strings
(defconst orgn--author-not-set-zh-CN "未指定作者" "用户未指定作者.")
(defconst orgn--author-email-not-set-zh-CN "未设定邮箱" "用户未设定邮件.")
;; File Instructions
(defconst orgn--main-file-instructions-zh-CN "故事摘要" "主文件入口.")
(defconst orgn--notes-file-instructions-zh-CN "故事要点" "一般文件说明.")
(defconst orgn--research-file-instructions-zh-CN "故事研究笔记" "一般研究文件说明.")
(defconst orgn--characters-file-instructions-zh-CN "故事中人物的索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "角色索引文件.")
(defconst orgn--places-file-instructions-zh-CN "故事中地点的索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "地点索引文件.")
(defconst orgn--props-file-instructions-zh-CN "故事中的道具索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "道具索引文件.")
(defconst orgn--chapters-file-instructions-zh-CN "故事中的章节索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "章节索引文件.")
(defconst orgn--linked-stories-file-instructions-zh-CN "故事中的链接索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "故事链接索引文件.")
;; Folder Names
(defconst orgn--notes-folder-zh-CN "笔记" "故事笔记目录.")
(defconst orgn--indices-folder-zh-CN "索引" "故事索引目录.")
(defconst orgn--chapters-folder-zh-CN "章节" "故事章节目录.")
(defconst orgn--exports-folder-zh-CN "导出" "故事导出目录.")
;; File Names
(defconst orgn--main-file-zh-CN "主文件" "故事主文件.")
(defconst orgn--notes-file-zh-CN "笔记" "一般摘要文件.")
(defconst orgn--research-file-zh-CN "研究" "一般研究文件.")
(defconst orgn--characters-file-zh-CN "角色" "角色索引文件.")
(defconst orgn--places-file-zh-CN "places" "Name for the story's location index file.")
(defconst orgn--props-file-zh-CN "props" "Name for the story's prop index file.")
(defconst orgn--chapters-file-zh-CN "chapters" "Name for the story's chapter index file.")
(defconst orgn--linked-stories-file-zh-CN "linked-stories" "Name for the story's linked stories index file.")
(defconst orgn--chapter-file-prefix-zh-CN "chapter-" "Prefix for the story's chapter files.")
(defconst orgn--notes-suffix-zh-CN "-notes" "Suffix for a file's associated notes file.")
(defconst orgn--character-file-prefix-zh-CN "character-" "Prefix for the story's character files.")
(defconst orgn--prop-file-prefix-zh-CN "prop-" "Prefix for the story's prop files.")
(defconst orgn--place-file-prefix-zh-CN "place-" "Prefix for the story's place files.")
;; File Titles
(defconst orgn--notes-title-zh-CN "Notes" "Name for the story's general notes title.")
(defconst orgn--research-title-zh-CN "Research" "Name for the story's general research title.")
(defconst orgn--characters-title-zh-CN "Characters" "Name for the story's character index title.")
(defconst orgn--places-title-zh-CN "Places" "Name for the story's location index title.")
(defconst orgn--props-title-zh-CN "Props" "Name for the story's prop index title.")
(defconst orgn--chapters-title-zh-CN "Chapters" "Name for the story's chapter index title.")
(defconst orgn--config-name-zh-CN "Export Settings" "Display name for a link to the story's configuration file.")
(defconst orgn--linked-stories-title-zh-CN "Linked Stories" "Name for the story's linked stories index title.")
;; File Preambles
(defconst orgn--story-name-zh-CN "story name" "Placeholder for the name of the story, used in generating template preambles.")
(defconst orgn--chapter-name-zh-CN "chapter name" "Placeholder for the name of a chapter, used in generating template preambles.")
;; <<story name>> (without the << >> brackets) must share the same value as org-novelist--story-name-zh-CN.
;; <<chapter name>> (without the << >> brackets) must share the same value as org-novelist--chapter-name-zh-CN.
(defconst orgn--notes-for-story-name-zh-CN "Notes for <<story name>>" "Part of the preamble for the general notes file.")
(defconst orgn--notes-for-chapter-name-zh-CN "Notes for <<chapter name>>" "Part of the preamble for the chapter notes file.")
(defconst orgn--research-for-story-name-zh-CN "Research for <<story name>>" "Part of the preamble for the general research file.")
(defconst orgn--character-index-for-story-name-zh-CN "Character Index for <<story name>>" "Part of the preamble for the character index file.")
(defconst orgn--place-index-for-story-name-zh-CN "Place Index for <<story name>>" "Part of the preamble for the location index file.")
(defconst orgn--prop-index-for-story-name-zh-CN "Prop Index for <<story name>>" "Part of the preamble for the prop index file.")
(defconst orgn--chapter-index-for-story-name-zh-CN "Chapter Index for <<story name>>" "Part of the preamble for the chapter index file.")
(defconst orgn--linked-stories-index-for-story-name-zh-CN "Linked Stories Index for <<story name>>" "Part of the preamble for the linked stories index file.")
(defconst orgn--front-matter-heading-zh-CN "Front Matter" "Name for the Front Matter of the book chapters, used as a heading.")
(defconst orgn--main-matter-heading-zh-CN "Main Matter" "Name for the Main Matter of the book chapters, used as a heading.")
(defconst orgn--back-matter-heading-zh-CN "Back Matter" "Name for the Back Matter of the book chapters, used as a heading.")
(defconst orgn--notes-zh-CN "Notes" "Part of the preamble for a chapter file.")
(defconst orgn--chapter-zh-CN "chapter" "Part of the preamble for a chapter file.")
(defconst orgn--character-zh-CN "character" "Part of the preamble for a character file.")
(defconst orgn--prop-zh-CN "prop" "Part of the preamble for a prop file.")
(defconst orgn--place-zh-CN "place" "Part of the preamble for a place file.")
(defconst orgn--character-name-zh-CN "character name" "Placeholder for the name of a character, used in generating template preambles.")
(defconst orgn--prop-name-zh-CN "prop name" "Placeholder for the name of a prop, used in generating template preambles.")
(defconst orgn--place-name-zh-CN "place name" "Placeholder for the name of a place, used in generating template preambles.")
;; <<Notes>> (without the << >> brackets) must share the same value as org-novelist--notes-zh-CN.
;; <<chapter>> (without the << >> brackets) must share the same value as org-novelist--chapter-zh-CN.
;; <<story name>> (without the << >> brackets) must share the same value as org-novelist--story-name-zh-CN.
;; <<chapter name>> (without the << >> brackets) must share the same value as org-novelist--chapter-name-zh-CN.
;; <<character name>> (without the << >> brackets) must share the same value as org-novelist--character-name-zh-CN.
;; <<character>> (without the << >> brackets) must share the same value as org-novelist--character-zh-CN.
;; <<prop name>> (without the << >> brackets) must share the same value as org-novelist--prop-name-zh-CN.
;; <<prop>> (without the << >> brackets) must share the same value as org-novelist--prop-zh-CN.
;; <<place name>> (without the << >> brackets) must share the same value as org-novelist--place-name-zh-CN.
;; <<place>> (without the << >> brackets) must share the same value as org-novelist--place-zh-CN.
(defconst orgn--notes-are-available-for-this-chapter-from-story-name-zh-CN "<<Notes>> are available for this <<chapter>> from <<story name>>." "Sentence describing chapter notes availability.")
(defconst orgn--notes-for-chapter-name-a-chapter-from-story-name-zh-CN "Notes for <<chapter name>>, a <<chapter>> from <<story name>>." "Sentence header for chapter notes template.")
(defconst orgn--notes-for-character-name-a-character-from-story-name-zh-CN "Notes for <<character name>>, a <<character>> from <<story name>>." "Sentence header for character notes template.")
(defconst orgn--notes-for-prop-name-a-prop-from-story-name-zh-CN "Notes for <<prop name>>, a <<prop>> from <<story name>>." "Sentence header for prop notes template.")
(defconst orgn--notes-for-place-name-a-place-from-story-name-zh-CN "Notes for <<place name>>, a <<place>> from <<story name>>." "Sentence header for place notes template.")
(defconst orgn--content-header-zh-CN "Content" "Part of the preamble for a chapter file.")
(defconst orgn--scene-name-here-zh-CN "Scene Name Here" "Part of the preamble for a chapter file.")
(defconst orgn--glossary-header-zh-CN "Glossary" "Part of the writing glossary in chapter files.")
(defconst orgn--view-notes-zh-CN "View Notes" "A link text to let the user view related notes.")
(defconst orgn--new-name-zh-CN "New name" "Placeholder for the new name in an alias string.")
(defconst orgn--old-name-zh-CN "old name" "Placeholder for the old name in an alias string.")
;; <<New name>> (without the << >> brackets) must share the same value as org-novelist--new-name-zh-CN.
;; <<old name>> (without the << >> brackets) must share the same value as org-novelist--old-name-zh-CN.
(defconst orgn--new-name-is-an-alias-for-old-name-zh-CN "<<New name>> is an alias for <<old name>>." "Text to let the user know something is an alias.")
(defconst orgn--appearances-in-chapters-header-zh-CN "Appearances in Chapters" "Part of the references section in notes files.")
(defconst orgn--line-zh-CN "Line" "The word for the line of a chapter. Used at the start of a sentence.")
(defconst orgn--not-yet-referenced-zh-CN "Not yet referenced in story." "Display that an object has not yet been mentioned in any of the chapter files.")
(defconst orgn--exports-header-zh-CN "Exports" "Heading for configuration file to use to list export templates.")
;; File Content
(defconst orgn--chapter-notes-content-zh-CN
  (concat
   "Show how this chapter contributes to:\n"
   "** Character Development\n"
   "** Moving the Plot Forward\n"
   "** Enriching the Setting\n")
  "Starter content for the chapter notes files.")
(defconst orgn--character-notes-content-zh-CN
  (concat
   "** Role in Story\n"
   "** What Does This Character Want?\n"
   "** What Would Most Motivate This Character Into Taking Action?\n"
   "** What Would Most Prevent This Character From Taking Action?\n"
   "** What Is The Worst Thing That Could Happen To This Character?\n"
   "** What Is The Best Thing That Could Happen To This Character?\n"
   "** Who or What Is Stopping This Character From Getting What They Want?\n"
   "** What Does This Character Need To Learn In Order To Be Happy?\n"
   "** Occupation\n"
   "** Physical Description\n"
   "** Personality\n"
   "** Habits/Mannerisms\n"
   "** Background\n"
   "** Internal Conflicts\n"
   "** External Conflicts\n"
   "** Notes\n")
  "Starter content for the character notes files.")
(defconst orgn--prop-notes-content-zh-CN
  (concat
   "** Role in Story\n"
   "** Description\n"
   "** Background\n"
   "** Notes\n")
  "Starter content for the prop notes files.")
(defconst orgn--place-notes-content-zh-CN
  (concat
   "** Role in Story\n"
   "** Description\n"
   "** Background\n"
   "** Related Characters\n"
   "** Season\n"
   "** Unique Features\n"
   "** Sights\n"
   "** Sounds\n"
   "** Smells\n"
   "** Notes\n")
  "Starter content for the place notes files.")
(defconst orgn--alias-zh-CN "Alias" "Alias section announcement for glossaries.")
(defconst orgn--glossary-default-character-desc-zh-CN "A character in the story." "The default description in the index for a character in the story.")
(defconst orgn--glossary-default-place-desc-zh-CN "A place in the story." "The default description in the index for a place in the story.")
(defconst orgn--glossary-default-prop-desc-zh-CN "A prop in the story." "The default description in the index for a prop in the story.")
;; User Queries
(defconst orgn--story-name-query-zh-CN "Story Name?" "A query to the user for what to name their story.")
(defconst orgn--story-save-location-query-zh-CN "Story Save Location?" "A query to the user for where to save their story.")
(defconst orgn--chapter-name-query-zh-CN "Chapter Name?" "A query to the user for the name of a chapter.")
(defconst orgn--chapter-location-query-zh-CN "Choose Chapter Location From Available Options for \"%s\" (%s/%s/%s):" "A query to the user for what section in which to place a new chapter.")
(defconst orgn--rebuild-chapter-index-location-query-zh-CN "Rebuilding index: Where should chapters go?" "When rebuilding chapter index, ask user where to place chapters.")
(defconst orgn--file-by-file-zh-CN "Select individually for each file" "Offer to the user to make selections on a file by file basis.")
(defconst orgn--delete-file-query-zh-CN "Delete file?" "A query to show the user to see if they want to delete a file.")
(defconst orgn--name-already-in-use-zh-CN "That name is already in use. Please try again" "Tell user the chosen name is already in use.")
(defconst orgn--okay-zh-CN "Okay" "Positive acknowledgement to the user.")  ; This is also used to check that a language pack exists
(defconst orgn--new-chapter-name-query-zh-CN "New Chapter Name?" "A query to the user for the new name of a chapter.")
(defconst orgn--character-name-query-zh-CN "Character Name?" "A query to the user for what to name a character.")
(defconst orgn--prop-name-query-zh-CN "Prop Name?" "A query to the user for what to name a prop.")
(defconst orgn--place-name-query-zh-CN "Place Name?" "A query to the user for what to name a place.")
(defconst orgn--new-character-name-query-zh-CN "New Character Name?" "A query to the user for the new name of a character.")
(defconst orgn--new-prop-name-query-zh-CN "New Prop Name?" "A query to the user for the new name of a prop.")
(defconst orgn--new-place-name-query-zh-CN "New Place Name?" "A query to the user for the new name of a place.")
(defconst orgn--new-story-name-query-zh-CN "New Story Name?" "A query to the user for the new name for the story.")
(defconst orgn--rename-story-folder-query-zh-CN "Rename story folder as well?" "A query to the user whether to also rename the story folder.")
(defconst orgn--match-lang-tag-to-story-query-zh-CN "What language was used to create this story (eg, 'en-US')?" "A query to the user to change the session language tag.")
(defconst orgn--story-folder-to-link-to-query-zh-CN "Story folder to link to current story?" "A query to the user for the story folder where a story to be linked is located.")
(defconst orgn--unlink-from-which-story-query-zh-CN "Unlink from which story?" "A query to the user for which story to unlink from the current story.")
;; Error/Throw/Messages
(defconst orgn--function-name-zh-CN "function name" "Placeholder for the name of the function, used in generating error messages.")
(defconst orgn--filename-zh-CN "filename" "Placeholder for the filename, used in generating error messages.")
;; <<function name>> (without the << >> brackets) must share the same value as org-novelist--function-name-zh-CN.
(defconst orgn--no-localised-function-zh-CN "No localized function found for <<function name>>" "The local language version of the function is missing.")
;; <<filename>> (without the << >> brackets) must share the same value as org-novelist--filename-zh-CN.
(defconst orgn--filename-is-not-writable-zh-CN "<<filename>> is not writable" "File is not writable.")
(defconst orgn--story-folder-already-in-use-zh-CN "That story folder is already in use" "Tell user the selected folder already contains an Org Novelist story.")
;; <<filename>> (without the << >> brackets) must share the same value as org-novelist--filename-zh-CN.
(defconst orgn--filename-is-not-part-of-a-story-folder-zh-CN "<<filename>> is not part of an Org Novelist story folder" "Function run from location not appearing to be part of an Org Novelist story.")
(defconst orgn--no-story-found-zh-CN "No story found" "No story found in folder.")
;; <<filename>> (without the << >> brackets) must share the same value as org-novelist--filename-zh-CN.
(defconst orgn--filename-is-not-readable-zh-CN "<<filename>> is not readable" "File is not readable.")
(defconst orgn--new-chapter-created-zh-CN "New chapter created" "Throw out of chapter creation loop once chapter created. Not an error.")
(defconst orgn--no-more-headings-zh-CN "No more headings" "Throw out of chapter creation loop as section heading not found. Not an error.")
(defconst orgn--file-malformed-zh-CN "File malformed" "Throw out of chapter creation function as no top heading. Recoverable error.")
(defconst orgn--file-not-found-zh-CN "File not found" "The requested file could not be found.")
(defconst orgn--no-chapters-found-zh-CN "No chapters found" "No chapters found in story.")
(defconst orgn--unsaved-buffer-zh-CN "Unsaved buffer" "Description of a buffer that is not saved to disk.")
(defconst orgn--no-characters-found-zh-CN "No characters found" "No characters found in story.")
(defconst orgn--no-props-found-zh-CN "No props found" "No props found in story.")
(defconst orgn--no-places-found-zh-CN "No places found" "No places found in story.")
;; <<filename>> (without the << >> brackets) must share the same value as org-novelist--filename-zh-CN.
(defconst orgn--filename-is-not-a-recognised-index-zh-CN "<<filename>> is not a recognized index" "Index is not of a known type.")
(defconst orgn--auto-ref-now-on-zh-CN "Org Novelist automatic referencing has been turned ON" "Inform user that automatic referencing has been turned on.")
(defconst orgn--auto-ref-now-off-zh-CN "Org Novelist automatic referencing has been turned OFF" "Inform user that automatic referencing has been turned off.")
(defconst orgn--language-tag-zh-CN "language tag" "Placeholder for the language code, used in generating error messages.")
;; <<language tag>> (without the << >> brackets) must share the same value as org-novelist--language-tag-zh-CN.
(defconst orgn--language-set-to-language-tag-zh-CN "Org Novelist language set to: <<language tag>>" "Inform user that language has been set.")
(defconst orgn--language-not-found-zh-CN "Selected language pack not found." "Inform user that language pack could not be found.")
(defconst orgn--chosen-story-same-as-current-story-zh-CN "Chosen story is the same as the current story." "Inform the user that they've selected the current story, instead of a new one.")
(defconst orgn--folder-already-exists-zh-CN "That folder already exists" "Inform user the folder already exists.")
(defconst orgn--no-linked-stories-zh-CN "Currently not linked to any stories" "Inform user there are currently no linked stories.")
;; Pattern Matches
(defconst orgn--sys-safe-name-zh-CN "[-A-Za-z0-9]*" "Regexp to match strings produced by `org-novelist--system-safe-name-zh-CN'.")
(defconst orgn--aliases-separators-zh-CN "[,\f\t\n\r\v]+" "Regexp to match the separators in a list of aliases.")
(defconst orgn--generate-separators-zh-CN orgn--aliases-separators-zh-CN "Regexp to match the separators in a list of generators.")
(defconst orgn--notes-name-search-zh-CN "[[:space:][:punct:]]+?%s[[:space:][:punct:]]+?" "Regexp to match names of things in chapter files.")
(defconst orgn--notes-name-org-link-search-zh-CN "\\[\\[:space:\\]\\[:punct:\\]\\]+?%s\\[\\[:space:\\]\\[:punct:\\]\\]+?" "Regexp to match, from an Org mode link, names of things in chapter files.")

;;;; Internationalised Functions

(defun orgn--system-safe-name-zh-CN (str)
  "Return the input string STR."
  str)


;;;; American English (en-US) ends here

(provide 'org-novelist-language-pack-zh-cn)
;;; org-novelist-language-pack-zh-cn.el ends here

;; Local Variables:
;; read-symbol-shorthands: (("orgn-" . "org-novelist-"))
;; End:
