<{*
    Site header: brand logo, collapse toggle and menu blocks.

    Params:
        brandUrl    URL the brand links to
        brandLabel  accessible name of the site; used in aria-label and logo alt text
        logoUrl     URL of the logo image
        menuBlocks  array of menu blocks; the toggle and menu are omitted when empty
        collapseId  id of the collapsible menu (default: navbarNav)
        navClass    classes for the <nav> (default: navbar flex-md-nowrap p-0 shadow border-bottom mb-3)
        menuClass   classes for the menu <ul> (default: navbar-nav flex-row)
*}>
<{assign var=headerCollapseId value=$collapseId|default:'navbarNav'}>
<nav class="<{$navClass|default:'navbar flex-md-nowrap p-0 shadow border-bottom mb-3'}>">
    <a class="navbar-brand" href="<{$brandUrl}>" aria-label="<{$brandLabel}> Home"><img src="<{$logoUrl}>" class="img-fluid" alt="<{$brandLabel}> logo"></a>
    <{if $menuBlocks}>
    <button class="navbar-toggler d-md-none" type="button" data-bs-toggle="collapse" data-bs-target="#<{$headerCollapseId}>"
            aria-controls="<{$headerCollapseId}>" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="d-flex justify-content-center collapse navbar-collapse" id="<{$headerCollapseId}>">
        <ul class="<{$menuClass|default:'navbar-nav flex-row'}>">
            <{includeq file="$theme_name/templates/blockszone_menu.html.tpl" blocks=$menuBlocks itemClass=''}>
        </ul>
    </div>
    <{/if}>
</nav>
