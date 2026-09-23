<{*
    Site footer.

    Params:
        footerText  footer text, e.g. the value of icms_footer
        columns     optional array of columns, each with: title, links (array of label/url/active items
                    as accepted by nav_links) and/or content (raw HTML)
        copyright   text shown after the copyright sign (line omitted unless this or showYear is set)
        showYear    truthy to show the current year in the copyright line (default: 0)
*}>
<footer>
    <div class="container text-center">
        <div class="row py-5 border-top">
            <p class="text-muted"><{$footerText}></p>
        </div>
        <{if $columns}>
        <div class="row">
            <{foreach from=$columns item=column}>
            <div class="col mb-3">
                <{if $column.title}>
                <h5><{$column.title}></h5>
                <{/if}>
                <{if $column.links}>
                <{includeq file="$theme_name/templates/components/nav_links.html.tpl"
                    items=$column.links
                    listClass=''
                    itemClass=''
                    linkClass=''
                }>
                <{/if}>
                <{$column.content}>
            </div>
            <{/foreach}>
        </div>
        <{/if}>
        <{if $copyright || $showYear}>
        <div class="row">
            <p class="text-body-secondary">&copy; <{if $showYear}><{$smarty.now|date_format:"%Y"}> <{/if}><{$copyright}></p>
        </div>
        <{/if}>
    </div>
</footer>
