package androidx.appcompat.view.menu;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class g31 extends md0 {
    public final int a;
    public final String b;

    public g31(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // androidx.appcompat.view.menu.md0
    public String c() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.md0
    public Object d(Object obj, Method method, Object[] objArr) {
        if (((Integer) objArr[this.a]).intValue() == jv0.J2()) {
            objArr[this.a] = Integer.valueOf(yu0.p());
        }
        return method.invoke(obj, objArr);
    }
}
