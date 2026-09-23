<{*
    Contents of the <head> element.

    Params:
        pageTitle     current page title (prefixed to the site name when set)
        siteName      site name
        charset       document charset (default: utf-8)
        moduleHeader  raw HTML emitted by modules (icms_module_header)
        themeCssUrl   URL of the theme stylesheet
*}>
<title><{if $pageTitle}><{$pageTitle}> : <{/if}><{$siteName}></title>
<meta charset="<{$charset|default:'utf-8'}>">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="generator" content="ImpressCMS"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<{$moduleHeader}>
<{if $themeCssUrl}>
<link rel="stylesheet" href="<{$themeCssUrl}>">
<{/if}>
