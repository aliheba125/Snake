package androidx.appcompat.view.menu;

import android.content.Context;

/* loaded from: classes.dex */
public abstract class v80 {

    public interface a {
        String a(Object obj);
    }

    public static ud b(String str, String str2) {
        return ud.l(t80.a(str, str2), t80.class);
    }

    public static ud c(final String str, final a aVar) {
        return ud.m(t80.class).b(il.j(Context.class)).f(new de() { // from class: androidx.appcompat.view.menu.u80
            @Override // androidx.appcompat.view.menu.de
            public final Object a(xd xdVar) {
                t80 d;
                d = v80.d(str, aVar, xdVar);
                return d;
            }
        }).d();
    }

    public static /* synthetic */ t80 d(String str, a aVar, xd xdVar) {
        return t80.a(str, aVar.a((Context) xdVar.a(Context.class)));
    }
}
