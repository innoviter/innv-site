---
slug: '{{ .File.ContentBaseName }}'
title: '{{ replace .File.ContentBaseName "-" " " | title }}'
date: '{{ .Date }}'
draft: true
---