<{*
    A zone of blocks, each rendered as a card.

    Params:
        blocks         array of blocks (each with title and content); nothing is rendered when empty
        zoneId         id of the wrapping div
        zoneClass      classes of the wrapping div (no wrapper when both zoneId and zoneClass are empty)
        zoneContainer  truthy to put the blocks inside a .container (default: 0)
        cardClass      extra classes for each card (default: xo-block)
        titleTag       heading element for the block titles (default: h4)
*}>
<{if $blocks}>
<{if $zoneId || $zoneClass}><div<{if $zoneId}> id="<{$zoneId}>"<{/if}><{if $zoneClass}> class="<{$zoneClass}>"<{/if}>><{/if}>
<{if $zoneContainer}><div class="container"><{/if}>
<{foreach from=$blocks item=block}>
<{includeq file="$theme_name/templates/components/card.html.tpl"
    title=$block.title
    body=$block.content
    footer=''
    id=''
    class=$cardClass|default:'xo-block'
    headerClass=''
    bodyClass=''
    titleTag=$titleTag|default:'h4'
}>
<{/foreach}>
<{if $zoneContainer}></div><{/if}>
<{if $zoneId || $zoneClass}></div><{/if}>
<{/if}>
