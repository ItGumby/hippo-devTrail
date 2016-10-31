<#include "../include/imports.ftl">
<#if menu??>
  <#if menu.siteMenuItems??>
    <nav>
      <ul class="navigation" id="main-navigation">
      <#list menu.siteMenuItems as item>
        <li>
            <#--
            TIL: http://javadoc.onehippo.org/hippo-cms7/7.8.x/site-toolkit/org/hippoecm/hst/core/sitemenu/CommonMenuItem.html
            getHstLink() returns an object; hst:link taglib converts to path; getExternalLink() returns a string
            -->
            <a href="<#if item.hstLink??><@hst.link link=item.hstLink/><#else>${item.externalLink}</#if>">
              <span class="label-nav">${item.name?html}</span>
            </a>
            <#--TODO: nested child links-->
        </li>
      </#list>
      <#if hstRequestContext.preview><li><@hst.cmseditmenu menu=menu /></li></#if>
      </ul>
    </nav>
  </#if>
<#else>
  <#if editMode><@hst.cmseditmenu menu=menu /></#if>
</#if>
