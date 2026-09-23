<{*
    List of links, rendered with the link component.

    Params:
        items      array of items, each with: label, url, and optionally title, active
        listClass  classes for the <ul> (default: nav flex-column)
        itemClass  classes for each <li> (default: nav-item mb-2)
        linkClass  classes for each link (default: nav-link p-0 text-body-secondary)
*}>
<{if $items}>
<ul class="<{$listClass|default:'nav flex-column'}>">
    <{foreach from=$items item=navItem}>
    <li class="<{$itemClass|default:'nav-item mb-2'}>">
        <{includeq file="$theme_name/templates/components/link.html.tpl"
            href=$navItem.url
            label=$navItem.label
            title=$navItem.title
            class=$linkClass|default:'nav-link p-0 text-body-secondary'
            active=$navItem.active
            current=''
            match=''
            attrs=''
        }>
    </li>
    <{/foreach}>
</ul>
<{/if}>
