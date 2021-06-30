<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<template:addResources type="css" resources="aos.css"/>
<c:set var="aosAnimation" value="${currentNode.properties.aosAnimation.string}"/>
<c:if test="${! renderContext.editMode}">
    <c:set var="aosOffset" value="${currentNode.properties.aosOffset.long}"/>
     <c:if test="${aosOffset != 120}">
        <c:set var="advancedSettings">${' '}data-aos-offset="${aosOffset}"</c:set>
    </c:if>
    <c:set var="aosDuration" value="${currentNode.properties.aosDuration.long}"/>
    <c:if test="${aosDuration != 400}">
        <c:set var="advancedSettings">${advancedSettings}${' '}data-aos-duration="${aosDuration}"</c:set>
    </c:if>
    <c:set var="aosEasing" value="${currentNode.properties.aosEasing.string}"/>
    <c:if test="${aosEasing ne 'ease'}">
        <c:set var="advancedSettings">${advancedSettings}${' '}data-aos-easing="${aosEasing}"</c:set>
    </c:if>
    <c:set var="aosDelay" value="${currentNode.properties.aosDelay.long}"/>
    <c:if test="${aosDelay != 0}">
        <c:set var="advancedSettings">${advancedSettings}${' '}data-aos-delay="${aosDelay}"</c:set>
    </c:if>
    <c:set var="aosAnchor" value="${currentNode.properties.aosAnchor.string}"/>
    <c:if test="${! empty aosAnchor}">
        <c:set var="advancedSettings">${advancedSettings}${' '}data-aos-anchor="${aosAnchor}"</c:set>
    </c:if>
    <c:set var="aosAnchorPlacement" value="${currentNode.properties.aosAnchorPlacement.string}"/>
    <c:if test="${aosAnchorPlacement ne 'top-bottom'}">
        <c:set var="advancedSettings">${advancedSettings}${' '}data-aos-anchor-placement="${aosAnchorPlacement}"</c:set>
    </c:if>
    <c:set var="aosOnce" value="${currentNode.properties.aosOnce.string}"/>
    <c:if test="${aosOnce}">
        <c:set var="advancedSettings">${advancedSettings}${' '}data-aos-once="true"</c:set>
    </c:if>
</c:if>


<div data-aos${renderContext.editMode?'-disabled':''}="${aosAnimation}"${advancedSettings}>
    ${wrappedContent}
</div>
<template:addResources type="javascript" resources="aos.js" targetTag="body"/>
<c:if test="${! renderContext.editMode}">
    <template:addResources type="inline" targetTag="body">
    <script>
        AOS.init();
    </script>
    </template:addResources>
</c:if>

