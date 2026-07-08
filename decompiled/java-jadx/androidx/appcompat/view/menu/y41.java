package androidx.appcompat.view.menu;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class y41 extends md0 {
    public final Object a;
    public final String b;

    public y41(String str, Object obj) {
        this.a = obj;
        this.b = str;
    }

    @Override // androidx.appcompat.view.menu.md0
    public String c() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.md0
    public Object d(Object obj, Method method, Object[] objArr) {
        return this.a;
    }
}
