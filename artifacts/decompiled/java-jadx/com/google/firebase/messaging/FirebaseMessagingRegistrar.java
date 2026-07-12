package com.google.firebase.messaging;

import androidx.annotation.Keep;
import androidx.appcompat.view.menu.bs;
import androidx.appcompat.view.menu.by0;
import androidx.appcompat.view.menu.de;
import androidx.appcompat.view.menu.e21;
import androidx.appcompat.view.menu.es;
import androidx.appcompat.view.menu.il;
import androidx.appcompat.view.menu.jy0;
import androidx.appcompat.view.menu.l41;
import androidx.appcompat.view.menu.or;
import androidx.appcompat.view.menu.ud;
import androidx.appcompat.view.menu.v80;
import androidx.appcompat.view.menu.xd;
import androidx.appcompat.view.menu.zy;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.FirebaseMessagingRegistrar;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(xd xdVar) {
        or orVar = (or) xdVar.a(or.class);
        jy0.a(xdVar.a(es.class));
        return new FirebaseMessaging(orVar, null, xdVar.d(l41.class), xdVar.d(zy.class), (bs) xdVar.a(bs.class), (e21) xdVar.a(e21.class), (by0) xdVar.a(by0.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<ud> getComponents() {
        return Arrays.asList(ud.e(FirebaseMessaging.class).h(LIBRARY_NAME).b(il.j(or.class)).b(il.g(es.class)).b(il.h(l41.class)).b(il.h(zy.class)).b(il.g(e21.class)).b(il.j(bs.class)).b(il.j(by0.class)).f(new de() { // from class: androidx.appcompat.view.menu.ns
            @Override // androidx.appcompat.view.menu.de
            public final Object a(xd xdVar) {
                FirebaseMessaging lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseMessagingRegistrar.lambda$getComponents$0(xdVar);
                return lambda$getComponents$0;
            }
        }).c().d(), v80.b(LIBRARY_NAME, "23.4.0"));
    }
}
