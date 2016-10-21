<#include "../include/imports.ftl">
<#-- @ftlvariable name="menu" type="org.hippoecm.hst.core.sitemenu.HstSiteMenu" -->
<#-- @ftlvariable name="editMode" type="java.lang.Boolean"-->
<#if menu??>
  <#if menu.siteMenuItems??>
    <nav>
      <ul class="navigation" id="main-navigation">
      <#list menu.siteMenuItems as item>
        <li><a href="<@hst.link link=item.hstLink/>" <#if item.selected || item.expanded>class="activelink"</#if>><span class="label-nav">${item.name?html}</span></a></li>
      </#list>
      </ul>
    </nav>
  </#if>
  <@hst.cmseditmenu menu=menu/>
<#else>
  <#if editMode>
    <h5>[Menu Component]</h5><sub>Click to edit Menu</sub>
  </#if>
</#if>
