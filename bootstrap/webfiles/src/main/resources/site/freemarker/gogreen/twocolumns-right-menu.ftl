<#include "../include/imports.ftl">
<#if menu??>
<div class="hst-container">
    <div class="hst-container-item">
        <#if menu.siteMenuItems??>
            <#list menu.siteMenuItems as item>
                <#if item.selected || item.expanded>
                    <div class="list-group left-nav">
                        <a href="<@hst.link link=item.hstLink/>" class="list-group-item level1">${item.name?html}</a>
                        <#list item.childMenuItems as item>
                            <a href="<@hst.link link=item.hstLink/>" class="list-group-item level2"><i class="fa fa-angle-right"> </i>${item.name?html}</a>
                        </#list>
                    </div>
                </#if>
            </#list>
        </#if>
    </div>
</div>
</#if>
<#--temp static markup from design -->
<div class="col-md-3 col-sm-3">
    <div class="hst-container">
        <div class="hst-container-item">
            <div class="list-group left-nav">
                <a href="about.html" class="list-group-item level1">About</a>
                <a href="quick-facts.html" class="list-group-item level2"><i class="fa fa-angle-right"> </i>Quick facts</a>
                <a href="terms--conditions.html" class="list-group-item level2"><i class="fa fa-angle-right"> </i>Terms &amp; Conditions</a>
            </div>
        </div>
    </div>
</div>
