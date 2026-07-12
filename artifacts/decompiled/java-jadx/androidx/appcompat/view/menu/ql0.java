package androidx.appcompat.view.menu;

import android.content.Intent;

/* loaded from: classes.dex */
public class ql0 {
    public final int a;
    public final Intent b;

    public ql0(Intent intent, int i) {
        this.a = i;
        this.b = intent;
    }

    public static ql0 a(Intent intent) {
        return new ql0((Intent) intent.getParcelableExtra("_S_|_P_target_"), intent.getIntExtra("_S_|_P_user_id_", 0));
    }

    public static void b(Intent intent, Intent intent2, int i) {
        intent.putExtra("_S_|_P_user_id_", i);
        intent.putExtra("_S_|_P_target_", intent2);
    }

    public String toString() {
        return "ProxyPendingActivityRecord{mUserId=" + this.a + ", mTarget=" + this.b + '}';
    }
}
