package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class o50 implements qq {
    public static final o50 b = new o50(null);
    public final Object a;

    public o50(Object obj) {
        this.a = obj;
    }

    public static qq a(Object obj) {
        return new o50(lj0.c(obj, "instance cannot be null"));
    }

    @Override // androidx.appcompat.view.menu.dl0
    public Object get() {
        return this.a;
    }
}
