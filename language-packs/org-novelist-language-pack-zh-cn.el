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
(defconst orgn--main-file-instructions-zh-CN "故事摘要" "主入口文件说明.")
(defconst orgn--notes-file-instructions-zh-CN "通用笔记" "通用笔记文件说明.")
(defconst orgn--research-file-instructions-zh-CN "故事研究笔记" "通用研究笔记说明.")
(defconst orgn--characters-file-instructions-zh-CN "故事中角色的索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "角色索引文件说明.")
(defconst orgn--places-file-instructions-zh-CN "故事中地点的索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "地点索引文件说明.")
(defconst orgn--props-file-instructions-zh-CN "故事中的道具索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "道具索引文件说明.")
(defconst orgn--chapters-file-instructions-zh-CN "故事中的章节索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "章节索引文件说明.")
(defconst orgn--linked-stories-file-instructions-zh-CN "故事中的链接索引。请勿手动编辑。仅作为 Org mode or Org Novelist 方法" "链接故事索引文件说明.")
;; Folder Names
(defconst orgn--notes-folder-zh-CN "笔记" "故事笔记目录.")
(defconst orgn--indices-folder-zh-CN "索引" "故事索引目录.")
(defconst orgn--chapters-folder-zh-CN "章节" "故事章节目录.")
(defconst orgn--exports-folder-zh-CN "导出" "故事导出目录.")
;; File Names
(defconst orgn--main-file-zh-CN "main" "故事主入口文件名索引文件名.")
(defconst orgn--notes-file-zh-CN "notes" "通用笔记文件名索引文件名.")
(defconst orgn--research-file-zh-CN "research" "通用研究文件名索引文件名.")
(defconst orgn--characters-file-zh-CN "characters" "角色名索引文件名.")
(defconst orgn--places-file-zh-CN "places" "地址名索引文件名.")
(defconst orgn--props-file-zh-CN "props" "道具名索引文件名.")
(defconst orgn--chapters-file-zh-CN "chapters" "章节名索引文件名.")
(defconst orgn--linked-stories-file-zh-CN "linked-stories" "链接故事名索引文件名.")
(defconst orgn--chapter-file-prefix-zh-CN "章节-" "故事章节文件的前缀.")
(defconst orgn--notes-suffix-zh-CN "-笔记" "文件关联笔记文件的后缀.")
(defconst orgn--character-file-prefix-zh-CN "角色-" "故事角色文件的前缀.")
(defconst orgn--prop-file-prefix-zh-CN "道具-" "故事道具文件的前缀.")
(defconst orgn--place-file-prefix-zh-CN "地点-" "故事地点文件的前缀.")
;; 文件标题
(defconst orgn--notes-title-zh-CN "笔记" "故事通用笔记的标题名称.")
(defconst orgn--research-title-zh-CN "研究" "故事通用研究的标题名称.")
(defconst orgn--characters-title-zh-CN "角色" "故事角色索引的标题名称.")
(defconst orgn--places-title-zh-CN "地点" "故事地点索引的标题名称.")
(defconst orgn--props-title-zh-CN "道具" "故事道具索引的标题名称.")
(defconst orgn--chapters-title-zh-CN "章节" "故事章节索引的标题名称.")
(defconst orgn--config-name-zh-CN "导出设置" "故事配置文件链接的显示名称.")
(defconst orgn--linked-stories-title-zh-CN "链接的故事" "故事链接故事索引的标题名称.")
;; 文件前言
(defconst orgn--story-name-zh-CN "故事名称" "故事名称的占位符，用于生成模板前言.")
(defconst orgn--chapter-name-zh-CN "章节名称" "章节名称的占位符，用于生成模板前言.")
;;<<故事名称>>（不带<< >>括号）必须与org-novelist--story-name-zh-CN的值相同.
;;<<章节名称>>（不带<< >>括号）必须与org-novelist--chapter-name-zh-CN的值相同.
(defconst orgn--notes-for-story-name-zh-CN "<<故事名称>> 的笔记" "通用笔记文件前言的一部分.")
(defconst orgn--notes-for-chapter-name-zh-CN "<<章节名称>> 的笔记" "章节笔记文件前言的一部分.")
(defconst orgn--research-for-story-name-zh-CN "<<故事名称>> 的研究" "通用研究文件前言的一部分.")
(defconst orgn--character-index-for-story-name-zh-CN "<<故事名称>> 的角色索引" "角色索引文件前言的一部分.")
(defconst orgn--place-index-for-story-name-zh-CN "<<故事名称>> 的地点索引" "地点索引文件前言的一部分.")
(defconst orgn--prop-index-for-story-name-zh-CN "<<故事名称>> 的道具索引" "道具索引文件前言的一部分.")
(defconst orgn--chapter-index-for-story-name-zh-CN "<<故事名称>> 的章节索引" "章节索引文件前言的一部分.")
(defconst orgn--linked-stories-index-for-story-name-zh-CN "<<故事名称>> 的链接故事索引" "链接故事索引文件前言的一部分.")
(defconst orgn--front-matter-heading-zh-CN "前言" "书籍章节的前言名称，用作标题.")
(defconst orgn--main-matter-heading-zh-CN "正文" "书籍章节的正文名称，用作标题.")
(defconst orgn--back-matter-heading-zh-CN "后记" "书籍章节的后记名称，用作标题.")
(defconst orgn--notes-zh-CN "笔记" "章节文件前言的一部分.")
(defconst orgn--chapter-zh-CN "章节" "章节文件前言的一部分.")
(defconst orgn--character-zh-CN "角色" "角色文件前言的一部分.")
(defconst orgn--prop-zh-CN "道具" "道具文件前言的一部分.")
(defconst orgn--place-zh-CN "地点" "地点文件前言的一部分.")
(defconst orgn--character-name-zh-CN "角色名称" "角色名称的占位符，用于生成模板前言.")
(defconst orgn--prop-name-zh-CN "道具名称" "道具名称的占位符，用于生成模板前言.")
(defconst orgn--place-name-zh-CN "地点名称" "地点名称的占位符，用于生成模板前言.")
;;<<笔记>>（不带<< >>括号）必须与org-novelist--notes-zh-CN的值相同.
;;<<章节>>（不带<< >>括号）必须与org-novelist--chapter-zh-CN的值相同.
;;<<故事名称>>（不带<< >>括号）必须与org-novelist--story-name-zh-CN的值相同.
;;<<章节名称>>（不带<< >>括号）必须与org-novelist--chapter-name-zh-CN的值相同.
;;<<角色名称>>（不带<< >>括号）必须与org-novelist--character-name-zh-CN的值相同.
;;<<角色>>（不带<< >>括号）必须与org-novelist--character-zh-CN的值相同.
;;<<道具名称>>（不带<< >>括号）必须与org-novelist--prop-name-zh-CN的值相同.
;;<<道具>>（不带<< >>括号）必须与org-novelist--prop-zh-CN的值相同.
;;<<地点名称>>（不带<< >>括号）必须与org-novelist--place-name-zh-CN的值相同.
;;<<地点>>（不带<< >>括号）必须与org-novelist--place-zh-CN的值相同.
(defconst orgn--notes-are-available-for-this-chapter-from-story-name-zh-CN "<<笔记>>可用于<<故事名称>>中的<<章节>>." "描述章节笔记可用性的句子.")
(defconst orgn--notes-for-chapter-name-a-chapter-from-story-name-zh-CN "<<章节名称>>的笔记，<<故事名称>>中的<<章节>>." "章节笔记模板的句子标题.")
(defconst orgn--notes-for-character-name-a-character-from-story-name-zh-CN "<<角色名称>>的笔记，<<故事名称>>中的<<角色>>." "角色笔记模板的句子标题.")
(defconst orgn--notes-for-prop-name-a-prop-from-story-name-zh-CN "<<道具名称>>的笔记，<<故事名称>>中的<<道具>>." "道具笔记模板的句子标题.")
(defconst orgn--notes-for-place-name-a-place-from-story-name-zh-CN "<<地点名称>>的笔记，<<故事名称>>中的<<地点>>." "地点笔记模板的句子标题.")
(defconst orgn--content-header-zh-CN "内容" "章节文件前言的一部分.")
(defconst orgn--scene-name-here-zh-CN "场景名称" "章节文件前言的一部分.")
(defconst orgn--glossary-header-zh-CN "术语表" "章节文件中写作术语表的一部分.")
(defconst orgn--view-notes-zh-CN "查看笔记" "让用户查看相关笔记的链接文本.")
(defconst orgn--new-name-zh-CN "新名称" "别名字符串中新名称的占位符.")
(defconst orgn--old-name-zh-CN "旧名称" "别名字符串中旧名称的占位符.")
;; <<新名称>>（不带<< >>括号）必须与org-novelist--new-name-zh-CN的值相同.
;; <<旧名称>>（不带<< >>括号）必须与org-novelist--old-name-zh-CN的值相同.
(defconst orgn--new-name-is-an-alias-for-old-name-zh-CN "<<新名称>>是<<旧名称>>的别名." "让用户知道某物是别名的文本.")
(defconst orgn--appearances-in-chapters-header-zh-CN "章节中的出现" "笔记文件引用部分的一部分.")
(defconst orgn--line-zh-CN "行" "章节行的单词.用于句子的开头.")
(defconst orgn--not-yet-referenced-zh-CN "尚未在故事中引用." "显示对象尚未在任何章节文件中提及.")
(defconst orgn--exports-header-zh-CN "导出" "配置文件的标题，用于列出导出模板.")
;; 文件内容
(defconst orgn--chapter-notes-content-zh-CN
  (concat
   "展示本章如何贡献于：\n"
   "** 角色发展\n"
   "** 推动情节\n"
   "** 丰富背景\n")
  "章节笔记文件的起始内容.")
(defconst orgn--character-notes-content-zh-CN
  (concat
   "** 角色基本信息\n"
   "- *姓名* :: \n"
   "- *性别* :: \n"
   "- *种族* :: \n"
   "- *身份* :: \n"
   "- *性格* :: \n"
   "- *状态* :: \n"
   "** 在故事中的角色\n"
   "** 这个角色想要什么？\n"
   "** 什么最能激励这个角色采取行动？\n"
   "** 什么最能阻止这个角色采取行动？\n"
   "** 这个角色可能发生的最糟糕的事情是什么？\n"
   "** 这个角色可能发生的最好的事情是什么？\n"
   "** 谁或什么阻止了这个角色得到他们想要的东西？\n"
   "** 这个角色需要学习什么才能快乐？\n"
   "** 职业\n"
   "** 外貌描述\n"
   "** 性格\n"
   "** 习惯/举止\n"
   "** 背景\n"
   "** 内部冲突\n"
   "** 外部冲突\n"
   "** 舞台准备（事件顺序）\n"
   "*** 事件1:\n"
   "- 对角色影响:\n"
   "*** 事件2:\n"
   "- 对角色影响:\n"
   "** 角色弧光（按故事推进）\n"
   "*** 初登场事件:\n"
   "- 角色状态:\n"
   "- 角色经历事件后的改变:\n"
   "** 笔记\n")
  "角色笔记文件的起始内容.")
(defconst orgn--prop-notes-content-zh-CN
  (concat
   "** 在故事中的角色\n"
   "** 描述\n"
   "** 背景\n"
   "** 笔记\n")
  "道具笔记文件的起始内容.")
(defconst orgn--place-notes-content-zh-CN
  (concat
   "** 在故事中的角色\n"
   "** 描述\n"
   "** 背景\n"
   "** 相关角色\n"
   "** 季节\n"
   "** 独特特征\n"
   "** 景象\n"
   "** 声音\n"
   "** 气味\n"
   "** 笔记\n")
  "地点笔记文件的起始内容.")
(defconst orgn--alias-zh-CN "别名" "术语表中别名部分的声明.")
(defconst orgn--glossary-default-character-desc-zh-CN "故事中的一个角色." "故事中角色索引的默认描述.")
(defconst orgn--glossary-default-place-desc-zh-CN "故事中的一个地点." "故事中地点索引的默认描述.")
(defconst orgn--glossary-default-prop-desc-zh-CN "故事中的一个道具." "故事中道具索引的默认描述.")
;; 用户查询
(defconst orgn--story-name-query-zh-CN "故事名称？" "向用户询问故事名称的查询.")
(defconst orgn--story-save-location-query-zh-CN "故事保存位置？" "向用户询问故事保存位置的查询.")
(defconst orgn--chapter-name-query-zh-CN "章节名称？" "向用户询问章节名称的查询.")
(defconst orgn--chapter-location-query-zh-CN "从\"%s\"的可用选项中选择章节位置（%s/%s/%s）：" "向用户询问新章节放置部分的查询.")
(defconst orgn--rebuild-chapter-index-location-query-zh-CN "重建索引：章节应放在哪里？" "重建章节索引时，询问用户章节应放在哪里.")
(defconst orgn--file-by-file-zh-CN "逐个文件选择" "向用户提供逐个文件选择的选项.")
(defconst orgn--delete-file-query-zh-CN "删除文件？" "向用户询问是否删除文件的查询.")
(defconst orgn--name-already-in-use-zh-CN "该名称已被使用，请重试." "告诉用户所选名称已被使用.")
(defconst orgn--okay-zh-CN "好的" "向用户表示肯定的确认.")  ; 这也用于检查语言包是否存在
(defconst orgn--new-chapter-name-query-zh-CN "新章节名称？" "向用户询问新章节名称的查询.")
(defconst orgn--character-name-query-zh-CN "角色名称？" "向用户询问角色名称的查询.")
(defconst orgn--prop-name-query-zh-CN "道具名称？" "向用户询问道具名称的查询.")
(defconst orgn--place-name-query-zh-CN "地点名称？" "向用户询问地点名称的查询.")
(defconst orgn--new-character-name-query-zh-CN "新角色名称？" "向用户询问新角色名称的查询.")
(defconst orgn--new-prop-name-query-zh-CN "新道具名称？" "向用户询问新道具名称的查询.")
(defconst orgn--new-place-name-query-zh-CN "新地点名称？" "向用户询问新地点名称的查询.")
(defconst orgn--new-story-name-query-zh-CN "新故事名称？" "向用户询问新故事名称的查询.")
(defconst orgn--rename-story-folder-query-zh-CN "同时重命名故事文件夹？" "向用户询问是否同时重命名故事文件夹的查询.")
(defconst orgn--match-lang-tag-to-story-query-zh-CN "创建此故事时使用的语言是什么（例如，'en-US'）？" "向用户询问更改会话语言标签的查询.")
(defconst orgn--story-folder-to-link-to-query-zh-CN "要链接到当前故事的故事文件夹？" "向用户询问要链接的故事所在文件夹的查询.")
(defconst orgn--unlink-from-which-story-query-zh-CN "从哪个故事取消链接？" "向用户询问从当前故事取消链接的故事的查询.")
;; 错误/抛出/消息
(defconst orgn--function-name-zh-CN "函数名称" "函数名称的占位符，用于生成错误消息.")
(defconst orgn--filename-zh-CN "文件名" "文件名的占位符，用于生成错误消息.")
;; <<函数名称>>（不带<< >>括号）必须与org-novelist--function-name-zh-CN的值相同.
(defconst orgn--no-localised-function-zh-CN "未找到<<函数名称>>的本地化函数" "缺少函数的本地语言版本.")
;; <<文件名>>（不带<< >>括号）必须与org-novelist--filename-zh-CN的值相同.
(defconst orgn--filename-is-not-writable-zh-CN "<<文件名>>不可写" "文件不可写.")
(defconst orgn--story-folder-already-in-use-zh-CN "该故事文件夹已被使用" "告诉用户所选文件夹已包含Org Novelist故事.")
;; <<文件名>>（不带<< >>括号）必须与org-novelist--filename-zh-CN的值相同.
(defconst orgn--filename-is-not-part-of-a-story-folder-zh-CN "<<文件名>>不是Org Novelist故事文件夹的一部分" "从位置运行的函数似乎不是Org Novelist故事的一部分.")
(defconst orgn--no-story-found-zh-CN "未找到故事" "文件夹中未找到故事.")
;; <<文件名>>（不带<< >>括号）必须与org-novelist--filename-zh-CN的值相同.
(defconst orgn--filename-is-not-readable-zh-CN "<<文件名>>不可读" "文件不可读.")
(defconst orgn--new-chapter-created-zh-CN "新章节已创建" "章节创建循环完成后抛出.不是错误.")
(defconst orgn--no-more-headings-zh-CN "没有更多标题" "未找到章节标题时抛出.不是错误.")
(defconst orgn--file-malformed-zh-CN "文件格式错误" "没有顶部标题时抛出.可恢复的错误.")
(defconst orgn--file-not-found-zh-CN "未找到文件" "未找到请求的文件.")
(defconst orgn--no-chapters-found-zh-CN "未找到章节" "故事中未找到章节.")
(defconst orgn--unsaved-buffer-zh-CN "未保存的缓冲区" "描述未保存到磁盘的缓冲区.")
(defconst orgn--no-characters-found-zh-CN "未找到角色" "故事中未找到角色.")
(defconst orgn--no-props-found-zh-CN "未找到道具" "故事中未找到道具.")
(defconst orgn--no-places-found-zh-CN "未找到地点" "故事中未找到地点.")
;; <<文件名>>（不带<< >>括号）必须与org-novelist--filename-zh-CN的值相同.
(defconst orgn--filename-is-not-a-recognised-index-zh-CN "<<文件名>>不是可识别的索引" "索引不是已知类型.")
(defconst orgn--auto-ref-now-on-zh-CN "Org Novelist自动引用已开启" "通知用户自动引用已开启.")
(defconst orgn--auto-ref-now-off-zh-CN "Org Novelist自动引用已关闭" "通知用户自动引用已关闭.")
(defconst orgn--language-tag-zh-CN "语言标签" "语言代码的占位符，用于生成错误消息.")
;; <<语言标签>>（不带<< >>括号）必须与org-novelist--language-tag-zh-CN的值相同.
(defconst orgn--language-set-to-language-tag-zh-CN "Org Novelist语言已设置为：<<语言标签>>" "通知用户语言已设置.")
(defconst orgn--language-not-found-zh-CN "未找到所选语言包." "通知用户未找到语言包.")
(defconst orgn--chosen-story-same-as-current-story-zh-CN "所选故事与当前故事相同." "通知用户他们选择了当前故事，而不是新故事.")
(defconst orgn--folder-already-exists-zh-CN "该文件夹已存在" "通知用户文件夹已存在.")
(defconst orgn--no-linked-stories-zh-CN "当前未链接到任何故事" "通知用户当前没有链接的故事.")
;; 模式匹配
(defconst orgn--sys-safe-name-zh-CN "[-A-Za-z0-9]*" "匹配由`org-novelist--system-safe-name-zh-CN'生成的字符串的正则表达式.")
(defconst orgn--aliases-separators-zh-CN "[,\f\t\n\r\v]+" "匹配别名列表中分隔符的正则表达式.")
(defconst orgn--generate-separators-zh-CN orgn--aliases-separators-zh-CN "用于匹配生成器列表中分隔符的正则表达式.")
(defconst orgn--notes-name-search-zh-CN "[[:space:][:punct:]]+?%s[[:space:][:punct:]]+?" "用于匹配章节文件中名称的正则表达式.")
(defconst orgn--notes-name-org-link-search-zh-CN "\\[\\[:space:\\]\\[:punct:\\]\\]+?%s\\[\\[:space:\\]\\[:punct:\\]\\]+?" "用于从 Org 模式链接中匹配章节文件中名称的正则表达式.")

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
