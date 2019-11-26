package org.apereo.cas.audit.spi.config;

import org.apereo.inspektr.audit.spi.AuditResourceResolver;
import org.aspectj.lang.JoinPoint;

/**
 * @Author: menfeng
 * @Date: 2019/11/26 16:06
 * @Version 1.0
 */
public class DeleteServiceResourceResolver  implements AuditResourceResolver {
    @Override
    public String[] resolveFrom(JoinPoint target, Object returnValue) {
        return new String[0];
    }

    @Override
    public String[] resolveFrom(JoinPoint target, Exception exception) {
        return new String[0];
    }
}
