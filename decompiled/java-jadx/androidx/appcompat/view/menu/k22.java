package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class k22 extends i22 {
    public static n12 e(Object obj, long j) {
        return (n12) w72.B(obj, j);
    }

    @Override // androidx.appcompat.view.menu.i22
    public final void b(Object obj, Object obj2, long j) {
        n12 e = e(obj, j);
        n12 e2 = e(obj2, j);
        int size = e.size();
        int size2 = e2.size();
        if (size > 0 && size2 > 0) {
            if (!e.c()) {
                e = e.e(size2 + size);
            }
            e.addAll(e2);
        }
        if (size > 0) {
            e2 = e;
        }
        w72.j(obj, j, e2);
    }

    @Override // androidx.appcompat.view.menu.i22
    public final void d(Object obj, long j) {
        e(obj, j).o();
    }

    public k22() {
        super();
    }
}
