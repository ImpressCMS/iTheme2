<{*
    A row with up to three block zones side by side (used above and below the page content).

    Params:
        left       blocks of the left zone
        center     blocks of the center zone
        right      blocks of the right zone
        prefix     zone name prefix, e.g. "top" or "bottom"; used for the row class (xo-page-<prefix>blocks),
                   the column classes (xo-page-<prefix>leftblocks ...), the zone classes (zone_page_<prefix>left ...)
                   and the zone ids (xo-canvas-<prefix>left ...)
        colClass   grid classes of each column (default: col-md col-12)
        container  wrap the row in a .container (default: 1, pass 0 to disable)

    Nothing is rendered when all three zones are empty.
*}>
<{if $left || $center || $right}>
<{assign var=rowContainer value=$container|default:1}>
<{if $rowContainer}><div class="container"><{/if}>
    <div class="row xo-page-<{$prefix}>blocks">
        <{if $left}>
        <div class="<{$colClass|default:'col-md col-12'}> xo-page-<{$prefix}>leftblocks">
            <{includeq file="$theme_name/templates/blockszone.html.tpl"
                blocks=$left
                zoneId="xo-canvas-`$prefix`left"
                zoneClass="zone_page_`$prefix`left"
                zoneContainer=0
                cardClass=''
                titleTag=''
            }>
        </div>
        <{/if}>
        <{if $center}>
        <div class="<{$colClass|default:'col-md col-12'}> xo-page-<{$prefix}>centerblocks">
            <{includeq file="$theme_name/templates/blockszone.html.tpl"
                blocks=$center
                zoneId="xo-canvas-`$prefix`center"
                zoneClass="zone_page_`$prefix`center"
                zoneContainer=0
                cardClass=''
                titleTag=''
            }>
        </div>
        <{/if}>
        <{if $right}>
        <div class="<{$colClass|default:'col-md col-12'}> xo-page-<{$prefix}>rightblocks">
            <{includeq file="$theme_name/templates/blockszone.html.tpl"
                blocks=$right
                zoneId="xo-canvas-`$prefix`right"
                zoneClass="zone_page_`$prefix`right"
                zoneContainer=0
                cardClass=''
                titleTag=''
            }>
        </div>
        <{/if}>
    </div>
<{if $rowContainer}></div><{/if}>
<{/if}>
