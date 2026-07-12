package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class o32 implements q32 {
    @Override // androidx.appcompat.view.menu.q32
    public final m32 b(Object obj) {
        jy0.a(obj);
        throw new NoSuchMethodError();
    }

    @Override // androidx.appcompat.view.menu.q32
    public final Map c(Object obj) {
        return (k32) obj;
    }

    @Override // androidx.appcompat.view.menu.q32
    public final Object d(Object obj, Object obj2) {
        k32 k32Var = (k32) obj;
        k32 k32Var2 = (k32) obj2;
        if (!k32Var2.isEmpty()) {
            if (!k32Var.f()) {
                k32Var = k32Var.d();
            }
            k32Var.c(k32Var2);
        }
        return k32Var;
    }

    @Override // androidx.appcompat.view.menu.q32
    public final Object e(Object obj) {
        ((k32) obj).e();
        return obj;
    }

    @Override // androidx.appcompat.view.menu.q32
    public final Object f(Object obj) {
        return k32.b().d();
    }

    @Override // androidx.appcompat.view.menu.q32
    public final boolean g(Object obj) {
        return !((k32) obj).f();
    }

    @Override // androidx.appcompat.view.menu.q32
    public final Map h(Object obj) {
        return (k32) obj;
    }

    @Override // androidx.appcompat.view.menu.q32
    public final int i(int i, Object obj, Object obj2) {
        k32 k32Var = (k32) obj;
        jy0.a(obj2);
        if (k32Var.isEmpty()) {
            return 0;
        }
        Iterator it = k32Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
