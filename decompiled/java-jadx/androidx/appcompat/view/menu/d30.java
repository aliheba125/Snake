package androidx.appcompat.view.menu;

import android.os.IBinder;

/* loaded from: classes.dex */
public class d30 extends j8 {
    public d30() {
        super((IBinder) bt0.c.b("isub"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return c30.b.b(bt0.c.b("isub"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("isub");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new y41("getAllSubInfoList", null));
        d(new y41("getAllSubInfoCount", -1));
        d(new y41("getActiveSubscriptionInfo", null));
        d(new y41("getActiveSubscriptionInfoForIccId", null));
        d(new y41("getActiveSubscriptionInfoForSimSlotIndex", null));
        d(new y41("getActiveSubscriptionInfoList", null));
        d(new y41("getActiveSubInfoCount", -1));
        d(new y41("getActiveSubInfoCountMax", -1));
        d(new y41("getAvailableSubscriptionInfoList", null));
        d(new y41("getAccessibleSubscriptionInfoList", null));
        d(new y41("addSubInfoRecord", -1));
        d(new y41("addSubInfo", -1));
        d(new y41("removeSubInfo", -1));
    }
}
