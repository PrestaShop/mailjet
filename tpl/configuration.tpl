{**
 * 2007-2014 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2014 PrestaShop SA
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
*}{* Has to be initiated here cause it's defined after the postProcess *}
<script type="text/javascript">
	var MJ_page_name = "{$MJ_page_name|default:''}";
</script>

{if !$is_landing}
<div class="logo_mailjet_tiny"></div>
<div id="MJ_tab_menu">
	<ul id="MJ_tab">
    {if $MJ_authentication}
            {foreach from=$MJ_tab_page key=MJ_key item=MJ_title}
            	{if $MJ_key == 'PRICING'}
                <li {if $MJ_page_name == $MJ_key}class="active"{/if}>
                    <a href="http://www.mailjet.com/pricing" target="_blank">{$MJ_title|default:''}</a>
                </li>
            	{else}
	                <li {if $MJ_page_name == $MJ_key}class="active"{/if}>
	                    <a href="{$MJ_adminmodules_link|default:''}&{$MJ_REQUEST_PAGE_TYPE|default:''}={$MJ_key|default:''}">{$MJ_title|default:''}</a>
	                </li>
            	{/if}
            	
            {/foreach}
    {else}

    {/if}
	</ul>
</div>
<div class="bandeau_noir"></div>
{/if}
{if isset($MJ_errors) && count($MJ_errors)}
	<div class="alert error">
		{l s='Errors list:' mod='mailjet'}
		<ul style="margin-top: 10px;">
			{foreach from=$MJ_errors item=current_error}
				<li>{$current_error|default:''}</li>
			{/foreach}
		</ul>
	</div>
{/if}

{include file="$MJ_local_path/tpl/$MJ_template_name.tpl"}

{if !$is_landing}
<div style="clear:both;width:960px;margin:0 auto;">
    <div align="center"><br />
    <a href="http://fr.mailjet.com/support" target="_blank">{l s='If you have a question or if you have a problem, click here to contact support.' mod='mailjet'}</a>
    </div>
</div>
{/if}