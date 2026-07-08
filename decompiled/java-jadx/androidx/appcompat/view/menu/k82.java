package androidx.appcompat.view.menu;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class k82 extends g82 {
    public k82(o82 o82Var) {
        super(o82Var);
    }

    private final String v(String str) {
        String Q = r().Q(str);
        if (TextUtils.isEmpty(Q)) {
            return (String) si1.s.a(null);
        }
        Uri parse = Uri.parse((String) si1.s.a(null));
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.authority(Q + "." + parse.getAuthority());
        return buildUpon.build().toString();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ mf1 d() {
        return super.d();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ qf1 e() {
        return super.e();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ ci1 f() {
        return super.f();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ mt1 g() {
        return super.g();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ jw1 h() {
        return super.h();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ tu1 i() {
        return super.i();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ x92 j() {
        return super.j();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void k() {
        super.k();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ pt1 l() {
        return super.l();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void m() {
        super.m();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void n() {
        super.n();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ i92 o() {
        return super.o();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ we2 p() {
        return super.p();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ lg1 q() {
        return super.q();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ rv1 r() {
        return super.r();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ p62 s() {
        return super.s();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ k82 t() {
        return super.t();
    }

    public final q82 u(String str) {
        if (wd2.a() && e().s(si1.A0)) {
            l().K().a("sgtm feature flag enabled.");
            rw1 D0 = q().D0(str);
            if (D0 == null) {
                return new q82(v(str));
            }
            q82 q82Var = null;
            if (D0.t()) {
                l().K().a("sgtm upload enabled in manifest.");
                rr1 L = r().L(D0.t0());
                if (L != null) {
                    String S = L.S();
                    if (!TextUtils.isEmpty(S)) {
                        String R = L.R();
                        l().K().c("sgtm configured with upload_url, server_info", S, TextUtils.isEmpty(R) ? "Y" : "N");
                        if (TextUtils.isEmpty(R)) {
                            q82Var = new q82(S);
                        } else {
                            HashMap hashMap = new HashMap();
                            hashMap.put("x-google-sgtm-server-info", R);
                            q82Var = new q82(S, hashMap);
                        }
                    }
                }
            }
            if (q82Var != null) {
                return q82Var;
            }
        }
        return new q82(v(str));
    }
}
