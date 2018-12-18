{**
 * templates/frontend/pages/information.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Information page.
 *
 *}
{if !$contentOnly}
	{include file="frontend/components/header.tpl" pageTitle=$pageTitle}
{/if}

<main class="container main__content" id="pragma_content_main">
	<div class="row">
		<div class="offset-md-1 col-md-10 offset-lg-2 col-lg-8">
			<header class="main__header">
				<h1 class="main__title">
					<span>{translate key=$pageTitle}</span>
				</h1>
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="website" anchor="information" sectionTitleKey="manager.website.information"}
			</header>
			<div class="content-body">
				{$content|strip_unsafe_html}
			</div>
		</div>
	</div>
</main>

{if !$contentOnly}
	{include file="frontend/components/footer.tpl"}
{/if}
