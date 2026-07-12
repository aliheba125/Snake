package androidx.appcompat.view.menu;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import androidx.appcompat.view.menu.rs1;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class we2 extends m82 {
    public String d;
    public Set e;
    public Map f;
    public Long g;
    public Long h;

    public we2(o82 o82Var) {
        super(o82Var);
    }

    public final boolean A(int i, int i2) {
        BitSet bitSet;
        if2 if2Var = (if2) this.f.get(Integer.valueOf(i));
        if (if2Var == null) {
            return false;
        }
        bitSet = if2Var.d;
        return bitSet.get(i2);
    }

    @Override // androidx.appcompat.view.menu.m82
    public final boolean x() {
        return false;
    }

    public final if2 y(Integer num) {
        if (this.f.containsKey(num)) {
            return (if2) this.f.get(num);
        }
        if2 if2Var = new if2(this, this.d);
        this.f.put(num, if2Var);
        return if2Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:244:0x0641, code lost:
    
        if (r8 != false) goto L292;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List z(String str, List list, List list2, Long l, Long l2) {
        boolean z;
        sq1 sq1Var;
        gi1 gi1Var;
        sf2 sf2Var;
        Map map;
        List<pq1> list3;
        Map map2;
        Map map3;
        mj0.e(str);
        mj0.i(list);
        mj0.i(list2);
        this.d = str;
        this.e = new HashSet();
        this.f = new o4();
        this.g = l;
        this.h = l2;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if ("_s".equals(((ks1) it.next()).b0())) {
                z = true;
                break;
            }
        }
        boolean z2 = gb2.a() && e().D(this.d, si1.j0);
        boolean z3 = gb2.a() && e().D(this.d, si1.i0);
        if (z) {
            lg1 q = q();
            String str2 = this.d;
            q.u();
            q.n();
            mj0.e(str2);
            ContentValues contentValues = new ContentValues();
            contentValues.put("current_session_count", (Integer) 0);
            try {
                q.B().update("events", contentValues, "app_id = ?", new String[]{str2});
            } catch (SQLiteException e) {
                q.l().G().c("Error resetting session-scoped event counts. appId", pt1.v(str2), e);
            }
        }
        Map emptyMap = Collections.emptyMap();
        if (z3 && z2) {
            emptyMap = q().O0(this.d);
        }
        Map N0 = q().N0(this.d);
        if (!N0.isEmpty()) {
            HashSet hashSet = new HashSet(N0.keySet());
            if (z) {
                String str3 = this.d;
                Map P0 = q().P0(this.d);
                mj0.e(str3);
                mj0.i(N0);
                o4 o4Var = new o4();
                if (!N0.isEmpty()) {
                    Iterator it2 = N0.keySet().iterator();
                    while (it2.hasNext()) {
                        int intValue = ((Integer) it2.next()).intValue();
                        rs1 rs1Var = (rs1) N0.get(Integer.valueOf(intValue));
                        List list4 = (List) P0.get(Integer.valueOf(intValue));
                        if (list4 == null || list4.isEmpty()) {
                            map3 = P0;
                            o4Var.put(Integer.valueOf(intValue), rs1Var);
                        } else {
                            List N = o().N(rs1Var.Z(), list4);
                            if (!N.isEmpty()) {
                                rs1.a u = ((rs1.a) rs1Var.x()).t().u(N);
                                u.x().y(o().N(rs1Var.b0(), list4));
                                ArrayList arrayList = new ArrayList();
                                for (js1 js1Var : rs1Var.Y()) {
                                    Map map4 = P0;
                                    if (!list4.contains(Integer.valueOf(js1Var.j()))) {
                                        arrayList.add(js1Var);
                                    }
                                    P0 = map4;
                                }
                                map3 = P0;
                                u.r().s(arrayList);
                                ArrayList arrayList2 = new ArrayList();
                                for (ss1 ss1Var : rs1Var.a0()) {
                                    if (!list4.contains(Integer.valueOf(ss1Var.K()))) {
                                        arrayList2.add(ss1Var);
                                    }
                                }
                                u.v().w(arrayList2);
                                o4Var.put(Integer.valueOf(intValue), (rs1) ((q02) u.j()));
                            }
                        }
                        P0 = map3;
                    }
                }
                map = o4Var;
            } else {
                map = N0;
            }
            Iterator it3 = hashSet.iterator();
            while (it3.hasNext()) {
                int intValue2 = ((Integer) it3.next()).intValue();
                rs1 rs1Var2 = (rs1) map.get(Integer.valueOf(intValue2));
                BitSet bitSet = new BitSet();
                BitSet bitSet2 = new BitSet();
                o4 o4Var2 = new o4();
                if (rs1Var2 != null && rs1Var2.j() != 0) {
                    for (js1 js1Var2 : rs1Var2.Y()) {
                        if (js1Var2.O()) {
                            o4Var2.put(Integer.valueOf(js1Var2.j()), js1Var2.N() ? Long.valueOf(js1Var2.K()) : null);
                        }
                    }
                }
                o4 o4Var3 = new o4();
                if (rs1Var2 != null && rs1Var2.N() != 0) {
                    for (ss1 ss1Var2 : rs1Var2.a0()) {
                        if (ss1Var2.P() && ss1Var2.j() > 0) {
                            o4Var3.put(Integer.valueOf(ss1Var2.K()), Long.valueOf(ss1Var2.G(ss1Var2.j() - 1)));
                        }
                    }
                }
                if (rs1Var2 != null) {
                    int i = 0;
                    while (i < (rs1Var2.R() << 6)) {
                        if (i92.d0(rs1Var2.b0(), i)) {
                            map2 = map;
                            l().K().c("Filter already evaluated. audience ID, filter ID", Integer.valueOf(intValue2), Integer.valueOf(i));
                            bitSet2.set(i);
                            if (i92.d0(rs1Var2.Z(), i)) {
                                bitSet.set(i);
                                i++;
                                map = map2;
                            }
                        } else {
                            map2 = map;
                        }
                        o4Var2.remove(Integer.valueOf(i));
                        i++;
                        map = map2;
                    }
                }
                Map map5 = map;
                rs1 rs1Var3 = (rs1) N0.get(Integer.valueOf(intValue2));
                if (z3 && z2 && (list3 = (List) emptyMap.get(Integer.valueOf(intValue2))) != null && this.h != null && this.g != null) {
                    for (pq1 pq1Var : list3) {
                        int L = pq1Var.L();
                        long longValue = this.h.longValue() / 1000;
                        if (pq1Var.S()) {
                            longValue = this.g.longValue() / 1000;
                        }
                        if (o4Var2.containsKey(Integer.valueOf(L))) {
                            o4Var2.put(Integer.valueOf(L), Long.valueOf(longValue));
                        }
                        if (o4Var3.containsKey(Integer.valueOf(L))) {
                            o4Var3.put(Integer.valueOf(L), Long.valueOf(longValue));
                        }
                    }
                }
                this.f.put(Integer.valueOf(intValue2), new if2(this, this.d, rs1Var3, bitSet, bitSet2, o4Var2, o4Var3));
                it3 = it3;
                map = map5;
            }
        }
        ve1 ve1Var = null;
        if (!list.isEmpty()) {
            sf2 sf2Var2 = new sf2(this);
            o4 o4Var4 = new o4();
            Iterator it4 = list.iterator();
            while (it4.hasNext()) {
                ks1 ks1Var = (ks1) it4.next();
                ks1 a = sf2Var2.a(this.d, ks1Var);
                if (a != null) {
                    lg1 q2 = q();
                    String str4 = this.d;
                    String b0 = a.b0();
                    gi1 C0 = q2.C0(str4, ks1Var.b0());
                    if (C0 == null) {
                        q2.l().L().c("Event aggregate wasn't created during raw event logging. appId, event", pt1.v(str4), q2.g().c(b0));
                        gi1Var = new gi1(str4, ks1Var.b0(), 1L, 1L, 1L, ks1Var.Y(), 0L, null, null, null, null);
                    } else {
                        gi1Var = new gi1(C0.a, C0.b, C0.c + 1, C0.d + 1, C0.e + 1, C0.f, C0.g, C0.h, C0.i, C0.j, C0.k);
                    }
                    q().U(gi1Var);
                    long j = gi1Var.c;
                    String b02 = a.b0();
                    Map map6 = (Map) o4Var4.get(b02);
                    if (map6 == null) {
                        map6 = q().H0(this.d, b02);
                        o4Var4.put(b02, map6);
                    }
                    Iterator it5 = map6.keySet().iterator();
                    while (it5.hasNext()) {
                        int intValue3 = ((Integer) it5.next()).intValue();
                        if (this.e.contains(Integer.valueOf(intValue3))) {
                            l().K().b("Skipping failed audience ID", Integer.valueOf(intValue3));
                        } else {
                            Iterator it6 = ((List) map6.get(Integer.valueOf(intValue3))).iterator();
                            boolean z4 = true;
                            while (true) {
                                if (!it6.hasNext()) {
                                    sf2Var = sf2Var2;
                                    break;
                                }
                                pq1 pq1Var2 = (pq1) it6.next();
                                bg2 bg2Var = new bg2(this, this.d, intValue3, pq1Var2);
                                sf2Var = sf2Var2;
                                z4 = bg2Var.k(this.g, this.h, a, j, gi1Var, A(intValue3, pq1Var2.L()));
                                if (!z4) {
                                    this.e.add(Integer.valueOf(intValue3));
                                    break;
                                }
                                y(Integer.valueOf(intValue3)).c(bg2Var);
                                sf2Var2 = sf2Var;
                            }
                            if (!z4) {
                                this.e.add(Integer.valueOf(intValue3));
                            }
                            sf2Var2 = sf2Var;
                        }
                    }
                }
            }
        }
        if (!list2.isEmpty()) {
            o4 o4Var5 = new o4();
            Iterator it7 = list2.iterator();
            while (it7.hasNext()) {
                ts1 ts1Var = (ts1) it7.next();
                String Z = ts1Var.Z();
                Map map7 = (Map) o4Var5.get(Z);
                if (map7 == null) {
                    map7 = q().J0(this.d, Z);
                    o4Var5.put(Z, map7);
                }
                Iterator it8 = map7.keySet().iterator();
                while (true) {
                    if (it8.hasNext()) {
                        int intValue4 = ((Integer) it8.next()).intValue();
                        if (this.e.contains(Integer.valueOf(intValue4))) {
                            l().K().b("Skipping failed audience ID", Integer.valueOf(intValue4));
                            break;
                        }
                        Iterator it9 = ((List) map7.get(Integer.valueOf(intValue4))).iterator();
                        boolean z5 = true;
                        while (true) {
                            if (!it9.hasNext()) {
                                break;
                            }
                            sq1Var = (sq1) it9.next();
                            if (l().C(2)) {
                                l().K().d("Evaluating filter. audience, filter, property", Integer.valueOf(intValue4), sq1Var.P() ? Integer.valueOf(sq1Var.j()) : null, g().g(sq1Var.L()));
                                l().K().b("Filter definition", o().J(sq1Var));
                            }
                            if (!sq1Var.P() || sq1Var.j() > 256) {
                                break;
                            }
                            ze1 ze1Var = new ze1(this, this.d, intValue4, sq1Var);
                            z5 = ze1Var.k(this.g, this.h, ts1Var, A(intValue4, sq1Var.j()));
                            if (!z5) {
                                this.e.add(Integer.valueOf(intValue4));
                                break;
                            }
                            y(Integer.valueOf(intValue4)).c(ze1Var);
                        }
                        l().L().c("Invalid property filter ID. appId, id", pt1.v(this.d), String.valueOf(sq1Var.P() ? Integer.valueOf(sq1Var.j()) : null));
                        this.e.add(Integer.valueOf(intValue4));
                    }
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Set keySet = this.f.keySet();
        keySet.removeAll(this.e);
        Iterator it10 = keySet.iterator();
        while (it10.hasNext()) {
            int intValue5 = ((Integer) it10.next()).intValue();
            if2 if2Var = (if2) this.f.get(Integer.valueOf(intValue5));
            mj0.i(if2Var);
            is1 a2 = if2Var.a(intValue5);
            arrayList3.add(a2);
            lg1 q3 = q();
            String str5 = this.d;
            rs1 Q = a2.Q();
            q3.u();
            q3.n();
            mj0.e(str5);
            mj0.i(Q);
            byte[] h = Q.h();
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("app_id", str5);
            contentValues2.put("audience_id", Integer.valueOf(intValue5));
            contentValues2.put("current_results", h);
            try {
            } catch (SQLiteException e2) {
                e = e2;
            }
            try {
                if (q3.B().insertWithOnConflict("audience_filter_values", null, contentValues2, 5) == -1) {
                    q3.l().G().b("Failed to insert filter results (got -1). appId", pt1.v(str5));
                }
            } catch (SQLiteException e3) {
                e = e3;
                q3.l().G().c("Error storing filter results. appId", pt1.v(str5), e);
            }
        }
        return arrayList3;
    }
}
