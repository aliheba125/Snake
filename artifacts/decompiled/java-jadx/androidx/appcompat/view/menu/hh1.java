package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class hh1 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final ei1 f;

    public hh1(cx1 cx1Var, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        ei1 ei1Var;
        mj0.e(str2);
        mj0.e(str3);
        this.a = str2;
        this.b = str3;
        this.c = TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        if (j2 != 0 && j2 > j) {
            cx1Var.l().L().b("Event created with reverse previous/current timestamps. appId", pt1.v(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            ei1Var = new ei1(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    cx1Var.l().G().a("Param name can't be null");
                    it.remove();
                } else {
                    Object s0 = cx1Var.L().s0(next, bundle2.get(next));
                    if (s0 == null) {
                        cx1Var.l().L().b("Param value can't be null", cx1Var.D().f(next));
                        it.remove();
                    } else {
                        cx1Var.L().N(bundle2, next, s0);
                    }
                }
            }
            ei1Var = new ei1(bundle2);
        }
        this.f = ei1Var;
    }

    public final hh1 a(cx1 cx1Var, long j) {
        return new hh1(cx1Var, this.c, this.a, this.b, this.d, j, this.f);
    }

    public final String toString() {
        return "Event{appId='" + this.a + "', name='" + this.b + "', params=" + String.valueOf(this.f) + "}";
    }

    public hh1(cx1 cx1Var, String str, String str2, String str3, long j, long j2, ei1 ei1Var) {
        mj0.e(str2);
        mj0.e(str3);
        mj0.i(ei1Var);
        this.a = str2;
        this.b = str3;
        this.c = TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        if (j2 != 0 && j2 > j) {
            cx1Var.l().L().c("Event created with reverse previous/current timestamps. appId, name", pt1.v(str2), pt1.v(str3));
        }
        this.f = ei1Var;
    }
}
