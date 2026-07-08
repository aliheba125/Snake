package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class xj extends vr0 {
    public static final xj u = new xj();

    public xj() {
        super(kz0.c, kz0.d, kz0.e, kz0.a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // androidx.appcompat.view.menu.nh
    public String toString() {
        return "Dispatchers.Default";
    }
}
