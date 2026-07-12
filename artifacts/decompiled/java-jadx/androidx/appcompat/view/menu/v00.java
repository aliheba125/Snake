package androidx.appcompat.view.menu;

import android.os.IBinder;

/* loaded from: classes.dex */
public class v00 extends j8 {
    public v00() {
        super((IBinder) bt0.c.b(m()));
    }

    public static String m() {
        return y8.d() ? "contexthub" : "contexthub_service";
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return u00.b.b(bt0.c.b(m()));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l(m());
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new y41("registerCallback", 0));
        d(new y41("getContextHubInfo", null));
        d(new y41("getContextHubHandles", new int[0]));
    }
}
