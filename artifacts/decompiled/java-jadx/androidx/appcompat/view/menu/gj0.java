package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class gj0 implements ej0 {
    public final Object[] a;
    public int b;

    public gj0(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0".toString());
        }
        this.a = new Object[i];
    }

    @Override // androidx.appcompat.view.menu.ej0
    public boolean a(Object obj) {
        z50.e(obj, "instance");
        if (!(!c(obj))) {
            throw new IllegalStateException("Already in the pool!".toString());
        }
        int i = this.b;
        Object[] objArr = this.a;
        if (i >= objArr.length) {
            return false;
        }
        objArr[i] = obj;
        this.b = i + 1;
        return true;
    }

    @Override // androidx.appcompat.view.menu.ej0
    public Object b() {
        int i = this.b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object obj = this.a[i2];
        z50.c(obj, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
        this.a[i2] = null;
        this.b--;
        return obj;
    }

    public final boolean c(Object obj) {
        int i = this.b;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.a[i2] == obj) {
                return true;
            }
        }
        return false;
    }
}
