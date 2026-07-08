package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.appcompat.view.menu.de;
import androidx.appcompat.view.menu.e21;
import androidx.appcompat.view.menu.h9;
import androidx.appcompat.view.menu.il;
import androidx.appcompat.view.menu.k21;
import androidx.appcompat.view.menu.ud;
import androidx.appcompat.view.menu.v80;
import androidx.appcompat.view.menu.xd;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e21 lambda$getComponents$0(xd xdVar) {
        k21.f((Context) xdVar.a(Context.class));
        return k21.c().g(h9.h);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<ud> getComponents() {
        return Arrays.asList(ud.e(e21.class).h(LIBRARY_NAME).b(il.j(Context.class)).f(new de() { // from class: androidx.appcompat.view.menu.j21
            @Override // androidx.appcompat.view.menu.de
            public final Object a(xd xdVar) {
                e21 lambda$getComponents$0;
                lambda$getComponents$0 = TransportRegistrar.lambda$getComponents$0(xdVar);
                return lambda$getComponents$0;
            }
        }).d(), v80.b(LIBRARY_NAME, "18.1.7"));
    }
}
