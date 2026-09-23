<{*
    A grid column holding a zone of blocks (used for the left and right canvas columns).

    Params:
        blocks       array of blocks; nothing is rendered when empty
        columnClass  grid and styling classes of the column, e.g. "col-md-2 col-12 xo-canvas-column"
        zoneId       id attribute of the column
        container    wrap the blocks in a .container (default: 1, pass 0 to disable)
*}>
<{if $blocks}>
<div<{if $zoneId}> id="<{$zoneId}>"<{/if}> class="<{$columnClass|default:'col'}>">
    <{includeq file="$theme_name/templates/blockszone.html.tpl"
        blocks=$blocks
        zoneId=''
        zoneClass=''
        zoneContainer=$container|default:1
        cardClass=''
        titleTag=''
    }>
</div>
<{/if}>
