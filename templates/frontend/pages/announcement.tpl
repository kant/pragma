{**
 * templates/frontend/pages/announcements.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page which represents a single announcement
 *
 * @uses $announcement Announcement The announcement to display
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$announcement->getLocalizedTitle()}

<main class="container main__content" id="pragma_content_main">
	<div class="row">
		<div class="offset-md-1 col-md-10 offset-lg-2 col-lg-8">

			{* Display book details *}
			<article class="obj_announcement_full">
				<header class="main__header">
					<h1 class="main__title">
						<span>{$announcement->getLocalizedTitle()|escape}</span>
					</h1>
				</header>
				<div class="date text-muted small">
					{$announcement->getDatePosted()|date_format:$dateFormatShort}
				</div>
				<div class="description">
					{if $announcement->getLocalizedDescription()}
						{$announcement->getLocalizedDescription()|strip_unsafe_html}
					{else}
						{$announcement->getLocalizedDescriptionShort()|strip_unsafe_html}
					{/if}
				</div>
			</article><!-- .obj_announcement_full -->

		</div>
	</div><!-- .row -->
</main>

{include file="frontend/components/footer.tpl"}
