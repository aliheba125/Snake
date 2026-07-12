package androidx.appcompat.view.menu;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.appcompat.view.menu.ks1;
import androidx.appcompat.view.menu.ms1;
import androidx.appcompat.view.menu.os1;
import androidx.appcompat.view.menu.ps1;
import androidx.appcompat.view.menu.ts1;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class p32 extends m82 {
    public p32(o82 o82Var) {
        super(o82Var);
    }

    private static String c(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }

    @Override // androidx.appcompat.view.menu.m82
    public final boolean x() {
        return false;
    }

    public final byte[] y(oi1 oi1Var, String str) {
        z92 z92Var;
        ps1.a aVar;
        Bundle bundle;
        rw1 rw1Var;
        os1.a aVar2;
        byte[] bArr;
        long j;
        gi1 a;
        n();
        this.a.Q();
        mj0.i(oi1Var);
        mj0.e(str);
        if (!e().B(str, si1.f0)) {
            l().F().b("Generating ScionPayload disabled. packageName", str);
            return new byte[0];
        }
        if (!"_iap".equals(oi1Var.m) && !"_iapx".equals(oi1Var.m)) {
            l().F().c("Generating a payload for this event is not available. package_name, event_name", str, oi1Var.m);
            return null;
        }
        os1.a J = os1.J();
        q().Q0();
        try {
            rw1 D0 = q().D0(str);
            if (D0 == null) {
                l().F().b("Log and bundle not available. package_name", str);
                return new byte[0];
            }
            if (!D0.r()) {
                l().F().b("Log and bundle disabled. package_name", str);
                return new byte[0];
            }
            ps1.a J0 = ps1.A3().h0(1).J0("android");
            if (!TextUtils.isEmpty(D0.t0())) {
                J0.J(D0.t0());
            }
            if (!TextUtils.isEmpty(D0.v0())) {
                J0.V((String) mj0.i(D0.v0()));
            }
            if (!TextUtils.isEmpty(D0.h())) {
                J0.b0((String) mj0.i(D0.h()));
            }
            if (D0.z() != -2147483648L) {
                J0.Y((int) D0.z());
            }
            J0.e0(D0.g0()).T(D0.c0());
            String j2 = D0.j();
            String r0 = D0.r0();
            if (!TextUtils.isEmpty(j2)) {
                J0.D0(j2);
            } else if (!TextUtils.isEmpty(r0)) {
                J0.D(r0);
            }
            J0.t0(D0.p0());
            lz1 Q = this.b.Q(str);
            J0.N(D0.a0());
            if (this.a.p() && e().K(J0.N0()) && Q.x() && !TextUtils.isEmpty(null)) {
                J0.u0(null);
            }
            J0.j0(Q.v());
            if (Q.x() && D0.q()) {
                Pair z = s().z(D0.t0(), Q);
                if (D0.q() && z != null && !TextUtils.isEmpty((CharSequence) z.first)) {
                    J0.L0(c((String) z.first, Long.toString(oi1Var.p)));
                    Object obj = z.second;
                    if (obj != null) {
                        J0.Q(((Boolean) obj).booleanValue());
                    }
                }
            }
            f().o();
            ps1.a r02 = J0.r0(Build.MODEL);
            f().o();
            r02.H0(Build.VERSION.RELEASE).p0((int) f().v()).O0(f().w());
            if (Q.y() && D0.u0() != null) {
                J0.P(c((String) mj0.i(D0.u0()), Long.toString(oi1Var.p)));
            }
            if (!TextUtils.isEmpty(D0.i())) {
                J0.B0((String) mj0.i(D0.i()));
            }
            String t0 = D0.t0();
            List M0 = q().M0(t0);
            Iterator it = M0.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z92Var = null;
                    break;
                }
                z92Var = (z92) it.next();
                if ("_lte".equals(z92Var.c)) {
                    break;
                }
            }
            if (z92Var == null || z92Var.e == null) {
                z92 z92Var2 = new z92(t0, "auto", "_lte", b().a(), 0L);
                M0.add(z92Var2);
                q().e0(z92Var2);
            }
            ts1[] ts1VarArr = new ts1[M0.size()];
            for (int i = 0; i < M0.size(); i++) {
                ts1.a w = ts1.X().u(((z92) M0.get(i)).c).w(((z92) M0.get(i)).d);
                o().U(w, ((z92) M0.get(i)).e);
                ts1VarArr[i] = (ts1) ((q02) w.j());
            }
            J0.a0(Arrays.asList(ts1VarArr));
            o().T(J0);
            if (na2.a() && e().s(si1.T0)) {
                this.b.v(D0, J0);
            }
            wt1 b = wt1.b(oi1Var);
            j().M(b.d, q().A0(str));
            j().V(b, e().y(str));
            Bundle bundle2 = b.d;
            bundle2.putLong("_c", 1L);
            l().F().a("Marking in-app purchase as real-time");
            bundle2.putLong("_r", 1L);
            bundle2.putString("_o", oi1Var.o);
            if (j().F0(J0.N0())) {
                j().N(bundle2, "_dbg", 1L);
                j().N(bundle2, "_r", 1L);
            }
            gi1 C0 = q().C0(str, oi1Var.m);
            if (C0 == null) {
                aVar = J0;
                bundle = bundle2;
                rw1Var = D0;
                aVar2 = J;
                bArr = null;
                a = new gi1(str, oi1Var.m, 0L, 0L, oi1Var.p, 0L, null, null, null, null);
                j = 0;
            } else {
                aVar = J0;
                bundle = bundle2;
                rw1Var = D0;
                aVar2 = J;
                bArr = null;
                j = C0.f;
                a = C0.a(oi1Var.p);
            }
            q().U(a);
            hh1 hh1Var = new hh1(this.a, oi1Var.o, str, oi1Var.m, oi1Var.p, j, bundle);
            ks1.a v = ks1.Z().B(hh1Var.d).z(hh1Var.b).v(hh1Var.e);
            Iterator it2 = hh1Var.f.iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                ms1.a w2 = ms1.Z().w(str2);
                Object p = hh1Var.f.p(str2);
                if (p != null) {
                    o().S(w2, p);
                    v.w(w2);
                }
            }
            ps1.a aVar3 = aVar;
            aVar3.y(v).z(qs1.G().r(ls1.G().r(a.c).s(oi1Var.m)));
            aVar3.C(p().z(rw1Var.t0(), Collections.emptyList(), aVar3.U0(), Long.valueOf(v.D()), Long.valueOf(v.D())));
            if (v.H()) {
                aVar3.q0(v.D()).Z(v.D());
            }
            long i0 = rw1Var.i0();
            if (i0 != 0) {
                aVar3.i0(i0);
            }
            long m0 = rw1Var.m0();
            if (m0 != 0) {
                aVar3.m0(m0);
            } else if (i0 != 0) {
                aVar3.m0(i0);
            }
            String m = rw1Var.m();
            if (ed2.a() && e().B(str, si1.y0) && m != null) {
                aVar3.M0(m);
            }
            rw1Var.p();
            aVar3.d0((int) rw1Var.k0()).A0(82001L).x0(b().a()).W(true);
            if (e().s(si1.C0)) {
                this.b.B(aVar3.N0(), aVar3);
            }
            os1.a aVar4 = aVar2;
            aVar4.s(aVar3);
            rw1 rw1Var2 = rw1Var;
            rw1Var2.j0(aVar3.R());
            rw1Var2.f0(aVar3.L());
            q().V(rw1Var2);
            q().T0();
            try {
                return o().g0(((os1) ((q02) aVar4.j())).h());
            } catch (IOException e) {
                l().G().c("Data loss. Failed to bundle and serialize. appId", pt1.v(str), e);
                return bArr;
            }
        } catch (SecurityException e2) {
            l().F().b("Resettable device id encryption failed", e2.getMessage());
            return new byte[0];
        } catch (SecurityException e3) {
            l().F().b("app instance id encryption failed", e3.getMessage());
            return new byte[0];
        } finally {
            q().R0();
        }
    }
}
