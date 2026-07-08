package com.google.firebase.installations;

import androidx.annotation.Keep;
import androidx.appcompat.view.menu.as;
import androidx.appcompat.view.menu.bs;
import androidx.appcompat.view.menu.de;
import androidx.appcompat.view.menu.il;
import androidx.appcompat.view.menu.k8;
import androidx.appcompat.view.menu.or;
import androidx.appcompat.view.menu.u7;
import androidx.appcompat.view.menu.ud;
import androidx.appcompat.view.menu.ul0;
import androidx.appcompat.view.menu.ur;
import androidx.appcompat.view.menu.v80;
import androidx.appcompat.view.menu.xd;
import androidx.appcompat.view.menu.xy;
import androidx.appcompat.view.menu.yy;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

@Keep
/* loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ bs lambda$getComponents$0(xd xdVar) {
        return new as((or) xdVar.a(or.class), xdVar.d(yy.class), (ExecutorService) xdVar.e(ul0.a(u7.class, ExecutorService.class)), ur.a((Executor) xdVar.e(ul0.a(k8.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<ud> getComponents() {
        return Arrays.asList(ud.e(bs.class).h(LIBRARY_NAME).b(il.j(or.class)).b(il.h(yy.class)).b(il.i(ul0.a(u7.class, ExecutorService.class))).b(il.i(ul0.a(k8.class, Executor.class))).f(new de() { // from class: androidx.appcompat.view.menu.ds
            @Override // androidx.appcompat.view.menu.de
            public final Object a(xd xdVar) {
                bs lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseInstallationsRegistrar.lambda$getComponents$0(xdVar);
                return lambda$getComponents$0;
            }
        }).d(), xy.a(), v80.b(LIBRARY_NAME, "17.2.0"));
    }
}
