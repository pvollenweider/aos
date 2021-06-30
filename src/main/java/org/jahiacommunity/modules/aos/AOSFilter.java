package org.jahiacommunity.modules.aos;

import org.jahia.services.render.RenderContext;
import org.jahia.services.render.Resource;
import org.jahia.services.render.filter.AbstractFilter;
import org.jahia.services.render.filter.RenderChain;


/**
 * AOS Filter
 * <p>
 * Filter that add animation to the current resource.
 * <p>
 * If an a Animate on scroll mixin is found, the filter just adds it to the wrappers list.
 */
public class AOSFilter extends AbstractFilter {
    public String prepare(RenderContext renderContext, Resource resource, RenderChain chain) throws Exception {
        if (resource.getNode().isNodeType("jmix:aos")) {
            resource.pushWrapper("aos");
        }
        return null;
    }
}
