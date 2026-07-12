package androidx.appcompat.view.menu;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class di0 extends md0 {
    public final String a;

    public di0(String str) {
        this.a = str;
    }

    @Override // androidx.appcompat.view.menu.md0
    public String c() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.md0
    public Object d(Object obj, Method method, Object[] objArr) {
        od0.f(objArr);
        return method.invoke(obj, objArr);
    }
}
