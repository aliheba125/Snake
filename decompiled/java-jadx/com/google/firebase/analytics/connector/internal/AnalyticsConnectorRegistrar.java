package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.appcompat.view.menu.a2;
import androidx.appcompat.view.menu.by0;
import androidx.appcompat.view.menu.de;
import androidx.appcompat.view.menu.il;
import androidx.appcompat.view.menu.or;
import androidx.appcompat.view.menu.ud;
import androidx.appcompat.view.menu.v80;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<ud> getComponents() {
        return Arrays.asList(ud.e(a2.class).b(il.j(or.class)).b(il.j(Context.class)).b(il.j(by0.class)).f(new de() { // from class: androidx.appcompat.view.menu.gk1
            @Override // androidx.appcompat.view.menu.de
            public final Object a(xd xdVar) {
                a2 c;
                c = b2.c((or) xdVar.a(or.class), (Context) xdVar.a(Context.class), (by0) xdVar.a(by0.class));
                return c;
            }
        }).e().d(), v80.b("fire-analytics", "21.5.0"));
    }
}
