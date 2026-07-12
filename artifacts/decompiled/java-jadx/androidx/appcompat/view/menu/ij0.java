package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class ij0 extends gj0 {
    public final Object c;

    public ij0(int i) {
        super(i);
        this.c = new Object();
    }

    @Override // androidx.appcompat.view.menu.gj0, androidx.appcompat.view.menu.ej0
    public boolean a(Object obj) {
        boolean a;
        z50.e(obj, "instance");
        synchronized (this.c) {
            a = super.a(obj);
        }
        return a;
    }

    @Override // androidx.appcompat.view.menu.gj0, androidx.appcompat.view.menu.ej0
    public Object b() {
        Object b;
        synchronized (this.c) {
            b = super.b();
        }
        return b;
    }
}
