package androidx.appcompat.view.menu;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.appcompat.view.menu.ir0;
import androidx.appcompat.view.menu.ks1;
import androidx.appcompat.view.menu.lz1;
import androidx.appcompat.view.menu.ms1;
import androidx.appcompat.view.menu.ps1;
import androidx.appcompat.view.menu.ts1;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes.dex */
public final class i92 extends m82 {
    public i92(o82 o82Var) {
        super(o82Var);
    }

    public static ms1 F(ks1 ks1Var, String str) {
        for (ms1 ms1Var : ks1Var.c0()) {
            if (ms1Var.c0().equals(str)) {
                return ms1Var;
            }
        }
        return null;
    }

    public static c42 G(c42 c42Var, byte[] bArr) {
        qz1 a = qz1.a();
        return a != null ? c42Var.m(bArr, a) : c42Var.l(bArr);
    }

    public static String L(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    public static List M(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 < bitSet.length()) {
                    if (bitSet.get(i3)) {
                        j |= 1 << i2;
                    }
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    public static void P(Uri.Builder builder, String str, String str2, Set set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    public static void Q(Uri.Builder builder, String[] strArr, Bundle bundle, Set set) {
        for (String str : strArr) {
            String[] split = str.split(",");
            String str2 = split[0];
            String str3 = split[split.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                P(builder, str3, string, set);
            }
        }
    }

    public static void R(ks1.a aVar, String str, Object obj) {
        List G = aVar.G();
        int i = 0;
        while (true) {
            if (i >= G.size()) {
                i = -1;
                break;
            } else if (str.equals(((ms1) G.get(i)).c0())) {
                break;
            } else {
                i++;
            }
        }
        ms1.a w = ms1.Z().w(str);
        if (obj instanceof Long) {
            w.t(((Long) obj).longValue());
        } else if (obj instanceof String) {
            w.y((String) obj);
        } else if (obj instanceof Double) {
            w.s(((Double) obj).doubleValue());
        }
        if (i >= 0) {
            aVar.t(i, w);
        } else {
            aVar.w(w);
        }
    }

    public static void V(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    public static void X(StringBuilder sb, int i, String str, rq1 rq1Var) {
        if (rq1Var == null) {
            return;
        }
        V(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (rq1Var.N()) {
            Z(sb, i, "comparison_type", rq1Var.G().name());
        }
        if (rq1Var.P()) {
            Z(sb, i, "match_as_float", Boolean.valueOf(rq1Var.M()));
        }
        if (rq1Var.O()) {
            Z(sb, i, "comparison_value", rq1Var.J());
        }
        if (rq1Var.R()) {
            Z(sb, i, "min_comparison_value", rq1Var.L());
        }
        if (rq1Var.Q()) {
            Z(sb, i, "max_comparison_value", rq1Var.K());
        }
        V(sb, i);
        sb.append("}\n");
    }

    public static void Y(StringBuilder sb, int i, String str, rs1 rs1Var) {
        if (rs1Var == null) {
            return;
        }
        V(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (rs1Var.J() != 0) {
            V(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : rs1Var.Z()) {
                int i3 = i2 + 1;
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2 = i3;
            }
            sb.append('\n');
        }
        if (rs1Var.R() != 0) {
            V(sb, 4);
            sb.append("status: ");
            int i4 = 0;
            for (Long l2 : rs1Var.b0()) {
                int i5 = i4 + 1;
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i4 = i5;
            }
            sb.append('\n');
        }
        if (rs1Var.j() != 0) {
            V(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i6 = 0;
            for (js1 js1Var : rs1Var.Y()) {
                int i7 = i6 + 1;
                if (i6 != 0) {
                    sb.append(", ");
                }
                sb.append(js1Var.O() ? Integer.valueOf(js1Var.j()) : null);
                sb.append(":");
                sb.append(js1Var.N() ? Long.valueOf(js1Var.K()) : null);
                i6 = i7;
            }
            sb.append("}\n");
        }
        if (rs1Var.N() != 0) {
            V(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i8 = 0;
            for (ss1 ss1Var : rs1Var.a0()) {
                int i9 = i8 + 1;
                if (i8 != 0) {
                    sb.append(", ");
                }
                sb.append(ss1Var.P() ? Integer.valueOf(ss1Var.K()) : null);
                sb.append(": [");
                Iterator it = ss1Var.O().iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    long longValue = ((Long) it.next()).longValue();
                    int i11 = i10 + 1;
                    if (i10 != 0) {
                        sb.append(", ");
                    }
                    sb.append(longValue);
                    i10 = i11;
                }
                sb.append("]");
                i8 = i9;
            }
            sb.append("}\n");
        }
        V(sb, 3);
        sb.append("}\n");
    }

    public static void Z(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        V(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    public static boolean c0(oi1 oi1Var, cb2 cb2Var) {
        mj0.i(oi1Var);
        mj0.i(cb2Var);
        return (TextUtils.isEmpty(cb2Var.n) && TextUtils.isEmpty(cb2Var.C)) ? false : true;
    }

    public static boolean d0(List list, int i) {
        if (i < (list.size() << 6)) {
            return ((1 << (i % 64)) & ((Long) list.get(i / 64)).longValue()) != 0;
        }
        return false;
    }

    public static Object e0(ks1 ks1Var, String str) {
        ms1 F = F(ks1Var, str);
        if (F == null) {
            return null;
        }
        if (F.j0()) {
            return F.d0();
        }
        if (F.h0()) {
            return Long.valueOf(F.X());
        }
        if (F.f0()) {
            return Double.valueOf(F.G());
        }
        if (F.V() <= 0) {
            return null;
        }
        List<ms1> e0 = F.e0();
        ArrayList arrayList = new ArrayList();
        for (ms1 ms1Var : e0) {
            if (ms1Var != null) {
                Bundle bundle = new Bundle();
                for (ms1 ms1Var2 : ms1Var.e0()) {
                    if (ms1Var2.j0()) {
                        bundle.putString(ms1Var2.c0(), ms1Var2.d0());
                    } else if (ms1Var2.h0()) {
                        bundle.putLong(ms1Var2.c0(), ms1Var2.X());
                    } else if (ms1Var2.f0()) {
                        bundle.putDouble(ms1Var2.c0(), ms1Var2.G());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static boolean f0(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static int y(ps1.a aVar, String str) {
        if (aVar == null) {
            return -1;
        }
        for (int i = 0; i < aVar.F(); i++) {
            if (str.equals(aVar.v0(i).Z())) {
                return i;
            }
        }
        return -1;
    }

    public final long A(byte[] bArr) {
        mj0.i(bArr);
        j().n();
        MessageDigest T0 = x92.T0();
        if (T0 != null) {
            return x92.B(T0.digest(bArr));
        }
        l().G().a("Failed to get MD5");
        return 0L;
    }

    public final Bundle B(Map map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    arrayList2.add(B((Map) obj2, false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    public final Parcelable C(byte[] bArr, Parcelable.Creator creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return (Parcelable) creator.createFromParcel(obtain);
        } catch (ir0.a unused) {
            l().G().a("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }

    public final oi1 D(hf1 hf1Var) {
        Object obj;
        Bundle B = B(hf1Var.g(), true);
        String obj2 = (!B.containsKey("_o") || (obj = B.get("_o")) == null) ? "app" : obj.toString();
        String b = nz1.b(hf1Var.e());
        if (b == null) {
            b = hf1Var.e();
        }
        return new oi1(b, new ei1(B), obj2, hf1Var.a());
    }

    public final ks1 E(hh1 hh1Var) {
        ks1.a v = ks1.Z().v(hh1Var.e);
        Iterator it = hh1Var.f.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ms1.a w = ms1.Z().w(str);
            Object p = hh1Var.f.p(str);
            mj0.i(p);
            S(w, p);
            v.w(w);
        }
        return (ks1) ((q02) v.j());
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0220  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final y72 H(String str, ps1 ps1Var, ks1.a aVar, String str2) {
        int indexOf;
        if (!sc2.a() || !e().B(str, si1.L0)) {
            return null;
        }
        long a = b().a();
        String[] split = e().z(str, si1.e0).split(",");
        HashSet hashSet = new HashSet(split.length);
        for (String str3 : split) {
            str3.getClass();
            if (!hashSet.add(str3)) {
                throw new IllegalArgumentException("duplicate element: " + ((Object) str3));
            }
        }
        Set unmodifiableSet = Collections.unmodifiableSet(hashSet);
        k82 t = t();
        String Q = t.r().Q(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(t.e().z(str, si1.Y));
        if (TextUtils.isEmpty(Q)) {
            builder.authority(t.e().z(str, si1.Z));
        } else {
            builder.authority(Q + "." + t.e().z(str, si1.Z));
        }
        builder.path(t.e().z(str, si1.a0));
        P(builder, "gmp_app_id", ps1Var.k0(), unmodifiableSet);
        P(builder, "gmp_version", "82001", unmodifiableSet);
        String E3 = ps1Var.E3();
        qf1 e = e();
        us1 us1Var = si1.O0;
        String str4 = "";
        if (e.B(str, us1Var) && r().a0(str)) {
            E3 = "";
        }
        P(builder, "app_instance_id", E3, unmodifiableSet);
        P(builder, "rdid", ps1Var.o0(), unmodifiableSet);
        P(builder, "bundle_id", ps1Var.D3(), unmodifiableSet);
        String F = aVar.F();
        String a2 = nz1.a(F);
        if (!TextUtils.isEmpty(a2)) {
            F = a2;
        }
        P(builder, "app_event_name", F, unmodifiableSet);
        P(builder, "app_version", String.valueOf(ps1Var.D0()), unmodifiableSet);
        String m0 = ps1Var.m0();
        if (e().B(str, us1Var) && r().e0(str)) {
            if (e().B(str, si1.B0)) {
                if (!TextUtils.isEmpty(m0) && (indexOf = m0.indexOf(".")) != -1) {
                    m0 = m0.substring(0, indexOf);
                }
            }
            P(builder, "os_version", str4, unmodifiableSet);
            P(builder, "timestamp", String.valueOf(aVar.D()), unmodifiableSet);
            if (ps1Var.w0()) {
                P(builder, "lat", "1", unmodifiableSet);
            }
            P(builder, "privacy_sandbox_version", String.valueOf(ps1Var.j()), unmodifiableSet);
            P(builder, "trigger_uri_source", "1", unmodifiableSet);
            P(builder, "trigger_uri_timestamp", String.valueOf(a), unmodifiableSet);
            if (str2 != null) {
                P(builder, "request_uuid", str2, unmodifiableSet);
            }
            List<ms1> G = aVar.G();
            Bundle bundle = new Bundle();
            for (ms1 ms1Var : G) {
                String c0 = ms1Var.c0();
                if (ms1Var.f0()) {
                    bundle.putString(c0, String.valueOf(ms1Var.G()));
                } else if (ms1Var.g0()) {
                    bundle.putString(c0, String.valueOf(ms1Var.R()));
                } else if (ms1Var.j0()) {
                    bundle.putString(c0, ms1Var.d0());
                } else if (ms1Var.h0()) {
                    bundle.putString(c0, String.valueOf(ms1Var.X()));
                }
            }
            Q(builder, e().z(str, si1.d0).split("\\|"), bundle, unmodifiableSet);
            List<ts1> t0 = ps1Var.t0();
            Bundle bundle2 = new Bundle();
            for (ts1 ts1Var : t0) {
                String Z = ts1Var.Z();
                if (ts1Var.b0()) {
                    bundle2.putString(Z, String.valueOf(ts1Var.G()));
                } else if (ts1Var.c0()) {
                    bundle2.putString(Z, String.valueOf(ts1Var.O()));
                } else if (ts1Var.f0()) {
                    bundle2.putString(Z, ts1Var.a0());
                } else if (ts1Var.d0()) {
                    bundle2.putString(Z, String.valueOf(ts1Var.U()));
                }
            }
            Q(builder, e().z(str, si1.c0).split("\\|"), bundle2, unmodifiableSet);
            if (na2.a() && e().s(si1.T0)) {
                P(builder, "dma", ps1Var.v0() ? "1" : "0", unmodifiableSet);
                if (!ps1Var.g0().isEmpty()) {
                    P(builder, "dma_cps", ps1Var.g0(), unmodifiableSet);
                }
            }
            return new y72(builder.build().toString(), a, 1);
        }
        str4 = m0;
        P(builder, "os_version", str4, unmodifiableSet);
        P(builder, "timestamp", String.valueOf(aVar.D()), unmodifiableSet);
        if (ps1Var.w0()) {
        }
        P(builder, "privacy_sandbox_version", String.valueOf(ps1Var.j()), unmodifiableSet);
        P(builder, "trigger_uri_source", "1", unmodifiableSet);
        P(builder, "trigger_uri_timestamp", String.valueOf(a), unmodifiableSet);
        if (str2 != null) {
        }
        List<ms1> G2 = aVar.G();
        Bundle bundle3 = new Bundle();
        while (r14.hasNext()) {
        }
        Q(builder, e().z(str, si1.d0).split("\\|"), bundle3, unmodifiableSet);
        List<ts1> t02 = ps1Var.t0();
        Bundle bundle22 = new Bundle();
        while (r14.hasNext()) {
        }
        Q(builder, e().z(str, si1.c0).split("\\|"), bundle22, unmodifiableSet);
        if (na2.a()) {
            P(builder, "dma", ps1Var.v0() ? "1" : "0", unmodifiableSet);
            if (!ps1Var.g0().isEmpty()) {
            }
        }
        return new y72(builder.build().toString(), a, 1);
    }

    public final String I(pq1 pq1Var) {
        if (pq1Var == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (pq1Var.V()) {
            Z(sb, 0, "filter_id", Integer.valueOf(pq1Var.L()));
        }
        Z(sb, 0, "event_name", g().c(pq1Var.P()));
        String L = L(pq1Var.R(), pq1Var.S(), pq1Var.T());
        if (!L.isEmpty()) {
            Z(sb, 0, "filter_type", L);
        }
        if (pq1Var.U()) {
            X(sb, 1, "event_count_filter", pq1Var.O());
        }
        if (pq1Var.j() > 0) {
            sb.append("  filters {\n");
            Iterator it = pq1Var.Q().iterator();
            while (it.hasNext()) {
                W(sb, 2, (qq1) it.next());
            }
        }
        V(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    public final String J(sq1 sq1Var) {
        if (sq1Var == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (sq1Var.P()) {
            Z(sb, 0, "filter_id", Integer.valueOf(sq1Var.j()));
        }
        Z(sb, 0, "property_name", g().g(sq1Var.L()));
        String L = L(sq1Var.M(), sq1Var.N(), sq1Var.O());
        if (!L.isEmpty()) {
            Z(sb, 0, "filter_type", L);
        }
        W(sb, 1, sq1Var.I());
        sb.append("}\n");
        return sb.toString();
    }

    public final String K(os1 os1Var) {
        hs1 z3;
        if (os1Var == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (ps1 ps1Var : os1Var.L()) {
            if (ps1Var != null) {
                V(sb, 1);
                sb.append("bundle {\n");
                if (ps1Var.Z0()) {
                    Z(sb, 1, "protocol_version", Integer.valueOf(ps1Var.U1()));
                }
                if (ed2.a() && e().B(ps1Var.D3(), si1.y0) && ps1Var.c1()) {
                    Z(sb, 1, "session_stitching_token", ps1Var.p0());
                }
                Z(sb, 1, "platform", ps1Var.n0());
                if (ps1Var.U0()) {
                    Z(sb, 1, "gmp_version", Long.valueOf(ps1Var.d3()));
                }
                if (ps1Var.h1()) {
                    Z(sb, 1, "uploading_gmp_version", Long.valueOf(ps1Var.w3()));
                }
                if (ps1Var.S0()) {
                    Z(sb, 1, "dynamite_version", Long.valueOf(ps1Var.Q2()));
                }
                if (ps1Var.B0()) {
                    Z(sb, 1, "config_version", Long.valueOf(ps1Var.C2()));
                }
                Z(sb, 1, "gmp_app_id", ps1Var.k0());
                Z(sb, 1, "admob_app_id", ps1Var.C3());
                Z(sb, 1, "app_id", ps1Var.D3());
                Z(sb, 1, "app_version", ps1Var.d0());
                if (ps1Var.y0()) {
                    Z(sb, 1, "app_version_major", Integer.valueOf(ps1Var.D0()));
                }
                Z(sb, 1, "firebase_instance_id", ps1Var.j0());
                if (ps1Var.R0()) {
                    Z(sb, 1, "dev_cert_hash", Long.valueOf(ps1Var.J2()));
                }
                Z(sb, 1, "app_store", ps1Var.F3());
                if (ps1Var.g1()) {
                    Z(sb, 1, "upload_timestamp_millis", Long.valueOf(ps1Var.t3()));
                }
                if (ps1Var.d1()) {
                    Z(sb, 1, "start_timestamp_millis", Long.valueOf(ps1Var.n3()));
                }
                if (ps1Var.T0()) {
                    Z(sb, 1, "end_timestamp_millis", Long.valueOf(ps1Var.X2()));
                }
                if (ps1Var.Y0()) {
                    Z(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(ps1Var.k3()));
                }
                if (ps1Var.X0()) {
                    Z(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(ps1Var.h3()));
                }
                Z(sb, 1, "app_instance_id", ps1Var.E3());
                Z(sb, 1, "resettable_device_id", ps1Var.o0());
                Z(sb, 1, "ds_id", ps1Var.i0());
                if (ps1Var.W0()) {
                    Z(sb, 1, "limited_ad_tracking", Boolean.valueOf(ps1Var.w0()));
                }
                Z(sb, 1, "os_version", ps1Var.m0());
                Z(sb, 1, "device_model", ps1Var.h0());
                Z(sb, 1, "user_default_language", ps1Var.q0());
                if (ps1Var.f1()) {
                    Z(sb, 1, "time_zone_offset_minutes", Integer.valueOf(ps1Var.m2()));
                }
                if (ps1Var.A0()) {
                    Z(sb, 1, "bundle_sequential_index", Integer.valueOf(ps1Var.i1()));
                }
                if (ps1Var.b1()) {
                    Z(sb, 1, "service_upload", Boolean.valueOf(ps1Var.x0()));
                }
                Z(sb, 1, "health_monitor", ps1Var.l0());
                if (ps1Var.a1()) {
                    Z(sb, 1, "retry_counter", Integer.valueOf(ps1Var.e2()));
                }
                if (ps1Var.P0()) {
                    Z(sb, 1, "consent_signals", ps1Var.f0());
                }
                if (ps1Var.V0()) {
                    Z(sb, 1, "is_dma_region", Boolean.valueOf(ps1Var.v0()));
                }
                if (ps1Var.Q0()) {
                    Z(sb, 1, "core_platform_services", ps1Var.g0());
                }
                if (ps1Var.C0()) {
                    Z(sb, 1, "consent_diagnostics", ps1Var.e0());
                }
                if (ps1Var.e1()) {
                    Z(sb, 1, "target_os_version", Long.valueOf(ps1Var.q3()));
                }
                if (sc2.a() && e().B(ps1Var.D3(), si1.L0)) {
                    Z(sb, 1, "ad_services_version", Integer.valueOf(ps1Var.j()));
                    if (ps1Var.z0() && (z3 = ps1Var.z3()) != null) {
                        V(sb, 2);
                        sb.append("attribution_eligibility_status {\n");
                        Z(sb, 2, "eligible", Boolean.valueOf(z3.X()));
                        Z(sb, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(z3.b0()));
                        Z(sb, 2, "pre_r", Boolean.valueOf(z3.c0()));
                        Z(sb, 2, "r_extensions_too_old", Boolean.valueOf(z3.d0()));
                        Z(sb, 2, "adservices_extension_too_old", Boolean.valueOf(z3.U()));
                        Z(sb, 2, "ad_storage_not_allowed", Boolean.valueOf(z3.R()));
                        Z(sb, 2, "measurement_manager_disabled", Boolean.valueOf(z3.a0()));
                        V(sb, 2);
                        sb.append("}\n");
                    }
                }
                List<ts1> t0 = ps1Var.t0();
                if (t0 != null) {
                    for (ts1 ts1Var : t0) {
                        if (ts1Var != null) {
                            V(sb, 2);
                            sb.append("user_property {\n");
                            Z(sb, 2, "set_timestamp_millis", ts1Var.e0() ? Long.valueOf(ts1Var.W()) : null);
                            Z(sb, 2, "name", g().g(ts1Var.Z()));
                            Z(sb, 2, "string_value", ts1Var.a0());
                            Z(sb, 2, "int_value", ts1Var.d0() ? Long.valueOf(ts1Var.U()) : null);
                            Z(sb, 2, "double_value", ts1Var.b0() ? Double.valueOf(ts1Var.G()) : null);
                            V(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<is1> r0 = ps1Var.r0();
                ps1Var.D3();
                if (r0 != null) {
                    for (is1 is1Var : r0) {
                        if (is1Var != null) {
                            V(sb, 2);
                            sb.append("audience_membership {\n");
                            if (is1Var.T()) {
                                Z(sb, 2, "audience_id", Integer.valueOf(is1Var.j()));
                            }
                            if (is1Var.U()) {
                                Z(sb, 2, "new_audience", Boolean.valueOf(is1Var.S()));
                            }
                            Y(sb, 2, "current_data", is1Var.Q());
                            if (is1Var.V()) {
                                Y(sb, 2, "previous_data", is1Var.R());
                            }
                            V(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<ks1> s0 = ps1Var.s0();
                if (s0 != null) {
                    for (ks1 ks1Var : s0) {
                        if (ks1Var != null) {
                            V(sb, 2);
                            sb.append("event {\n");
                            Z(sb, 2, "name", g().c(ks1Var.b0()));
                            if (ks1Var.f0()) {
                                Z(sb, 2, "timestamp_millis", Long.valueOf(ks1Var.Y()));
                            }
                            if (ks1Var.e0()) {
                                Z(sb, 2, "previous_timestamp_millis", Long.valueOf(ks1Var.X()));
                            }
                            if (ks1Var.d0()) {
                                Z(sb, 2, "count", Integer.valueOf(ks1Var.j()));
                            }
                            if (ks1Var.T() != 0) {
                                a0(sb, 2, ks1Var.c0());
                            }
                            V(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                V(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    public final List N(List list, List list2) {
        int i;
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                l().L().b("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    l().L().c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r5 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (r4 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        r3 = (android.os.Parcelable[]) r3;
        r4 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        if (r7 >= r4) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        r5.add(O((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0080, code lost:
    
        r0.put(r2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        if ((r3 instanceof java.util.ArrayList) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
    
        r3 = (java.util.ArrayList) r3;
        r4 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
    
        if (r7 >= r4) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
    
        r8 = r3.get(r7);
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0069, code lost:
    
        r5.add(O((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
    
        if ((r3 instanceof android.os.Bundle) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0077, code lost:
    
        r5.add(O((android.os.Bundle) r3, false));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Map O(Bundle bundle, boolean z) {
        HashMap hashMap = new HashMap();
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            Object obj = bundle.get(next);
            boolean z2 = obj instanceof Parcelable[];
            if (!z2 && !(obj instanceof ArrayList) && !(obj instanceof Bundle)) {
                if (obj != null) {
                    hashMap.put(next, obj);
                }
            }
        }
        return hashMap;
    }

    public final void S(ms1.a aVar, Object obj) {
        mj0.i(obj);
        aVar.B().z().x().A();
        if (obj instanceof String) {
            aVar.y((String) obj);
            return;
        }
        if (obj instanceof Long) {
            aVar.t(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            aVar.s(((Double) obj).doubleValue());
            return;
        }
        if (!(obj instanceof Bundle[])) {
            l().G().b("Ignoring invalid (type) event param value", obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                ms1.a Z = ms1.Z();
                for (String str : bundle.keySet()) {
                    ms1.a w = ms1.Z().w(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        w.t(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        w.y((String) obj2);
                    } else if (obj2 instanceof Double) {
                        w.s(((Double) obj2).doubleValue());
                    }
                    Z.u(w);
                }
                if (Z.r() > 0) {
                    arrayList.add((ms1) ((q02) Z.j()));
                }
            }
        }
        aVar.v(arrayList);
    }

    public final void T(ps1.a aVar) {
        l().K().a("Checking account type status for ad personalization signals");
        if (h0(aVar.N0())) {
            l().F().a("Turning off ad personalization due to account type");
            ts1 ts1Var = (ts1) ((q02) ts1.X().u("_npa").w(f().u()).t(1L).j());
            int i = 0;
            while (true) {
                if (i >= aVar.F()) {
                    aVar.B(ts1Var);
                    break;
                } else {
                    if ("_npa".equals(aVar.v0(i).Z())) {
                        aVar.v(i, ts1Var);
                        break;
                    }
                    i++;
                }
            }
            if (na2.a() && e().s(si1.T0)) {
                dg1 b = dg1.b(aVar.P0());
                b.d(lz1.a.AD_PERSONALIZATION, bg1.CHILD_ACCOUNT);
                aVar.f0(b.toString());
            }
        }
    }

    public final void U(ts1.a aVar, Object obj) {
        mj0.i(obj);
        aVar.y().v().r();
        if (obj instanceof String) {
            aVar.x((String) obj);
            return;
        }
        if (obj instanceof Long) {
            aVar.t(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            aVar.s(((Double) obj).doubleValue());
        } else {
            l().G().b("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final void W(StringBuilder sb, int i, qq1 qq1Var) {
        if (qq1Var == null) {
            return;
        }
        V(sb, i);
        sb.append("filter {\n");
        if (qq1Var.O()) {
            Z(sb, i, "complement", Boolean.valueOf(qq1Var.N()));
        }
        if (qq1Var.Q()) {
            Z(sb, i, "param_name", g().f(qq1Var.M()));
        }
        if (qq1Var.R()) {
            int i2 = i + 1;
            tq1 L = qq1Var.L();
            if (L != null) {
                V(sb, i2);
                sb.append("string_filter");
                sb.append(" {\n");
                if (L.O()) {
                    Z(sb, i2, "match_type", L.G().name());
                }
                if (L.N()) {
                    Z(sb, i2, "expression", L.J());
                }
                if (L.M()) {
                    Z(sb, i2, "case_sensitive", Boolean.valueOf(L.L()));
                }
                if (L.j() > 0) {
                    V(sb, i + 2);
                    sb.append("expression_list {\n");
                    for (String str : L.K()) {
                        V(sb, i + 3);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                V(sb, i2);
                sb.append("}\n");
            }
        }
        if (qq1Var.P()) {
            X(sb, i + 1, "number_filter", qq1Var.K());
        }
        V(sb, i);
        sb.append("}\n");
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    public final void a0(StringBuilder sb, int i, List list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ms1 ms1Var = (ms1) it.next();
            if (ms1Var != null) {
                V(sb, i2);
                sb.append("param {\n");
                Z(sb, i2, "name", ms1Var.i0() ? g().f(ms1Var.c0()) : null);
                Z(sb, i2, "string_value", ms1Var.j0() ? ms1Var.d0() : null);
                Z(sb, i2, "int_value", ms1Var.h0() ? Long.valueOf(ms1Var.X()) : null);
                Z(sb, i2, "double_value", ms1Var.f0() ? Double.valueOf(ms1Var.G()) : null);
                if (ms1Var.V() > 0) {
                    a0(sb, i2, ms1Var.e0());
                }
                V(sb, i2);
                sb.append("}\n");
            }
        }
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    public final boolean b0(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(b().a() - j) > j2;
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

    public final byte[] g0(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            l().G().b("Failed to gzip content", e);
            throw e;
        }
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ jw1 h() {
        return super.h();
    }

    public final boolean h0(String str) {
        mj0.i(str);
        rw1 D0 = q().D0(str);
        return D0 != null && f().y() && D0.q() && r().V(str);
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ tu1 i() {
        return super.i();
    }

    public final byte[] i0(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
        } catch (IOException e) {
            l().G().b("Failed to ungzip content", e);
            throw e;
        }
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ x92 j() {
        return super.j();
    }

    public final List j0() {
        Map c = si1.c(this.b.a());
        if (c == null || c.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int intValue = ((Integer) si1.R.a(null)).intValue();
        for (Map.Entry entry : c.entrySet()) {
            if (((String) entry.getKey()).startsWith("measurement.id.")) {
                try {
                    int parseInt = Integer.parseInt((String) entry.getValue());
                    if (parseInt != 0) {
                        arrayList.add(Integer.valueOf(parseInt));
                        if (arrayList.size() >= intValue) {
                            l().L().b("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    l().L().b("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
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

    @Override // androidx.appcompat.view.menu.m82
    public final boolean x() {
        return false;
    }

    public final long z(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return A(str.getBytes(Charset.forName("UTF-8")));
    }
}
