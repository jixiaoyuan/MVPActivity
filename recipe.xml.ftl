<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <instantiate from="root/res/layout/activity_mvp.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
</#if>

<#if generateMVP>

    <instantiate from="root/src/app_package/IContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${contractName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${contractName}.java" />

     <instantiate from="root/src/app_package/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${modelName}.java" />

     <instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />
    
</#if>


<#if generateKotlin>
  
    <instantiate from="root/src/app_package/MVPActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
<#else>
    <instantiate from="root/src/app_package/MVPActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</#if>

</recipe>
