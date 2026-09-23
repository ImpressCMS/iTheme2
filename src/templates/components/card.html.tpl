<{*
    Bootstrap card with optional header and footer.

    Params:
        title        header text (header is omitted when empty)
        body         card body HTML
        footer       card footer HTML (footer is omitted when empty)
        id           id attribute of the card
        class        extra classes for the card
        headerClass  extra classes for the card header
        bodyClass    extra classes for the card body
        titleTag     heading element used for the title (default: h4)
*}>
<{assign var=cardTitleTag value=$titleTag|default:'h4'}>
<div<{if $id}> id="<{$id}>"<{/if}> class="card<{if $class}> <{$class}><{/if}>">
    <{if $title}>
    <div class="card-header<{if $headerClass}> <{$headerClass}><{/if}>">
        <<{$cardTitleTag}>><{$title}></<{$cardTitleTag}>>
    </div>
    <{/if}>
    <div class="card-body<{if $bodyClass}> <{$bodyClass}><{/if}>">
        <{$body}>
    </div>
    <{if $footer}>
    <div class="card-footer">
        <{$footer}>
    </div>
    <{/if}>
</div>
