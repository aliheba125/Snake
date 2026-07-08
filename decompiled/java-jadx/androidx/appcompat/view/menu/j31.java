package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class j31 extends nh {
    public static final j31 o = new j31();

    @Override // androidx.appcompat.view.menu.nh
    public void A(kh khVar, Runnable runnable) {
        jy0.a(khVar.d(xa1.n));
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // androidx.appcompat.view.menu.nh
    public boolean D(kh khVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.nh
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
