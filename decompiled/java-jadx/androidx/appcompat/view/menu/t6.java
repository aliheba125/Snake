package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.AtomicFile;
import android.util.SparseArray;
import androidx.appcompat.view.menu.j00;
import androidx.appcompat.view.menu.p10;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class t6 extends j00.a implements i30 {
    public static final t6 p = new t6();
    public final SparseArray l = new SparseArray();
    public final q6 m = new q6();
    public final Map n = new HashMap();
    public final Executor o = Executors.newCachedThreadPool();

    public class a implements IBinder.DeathRecipient {
        public final /* synthetic */ IBinder l;

        public a(IBinder iBinder) {
            this.l = iBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.l.unlinkToDeath(this, 0);
            t6.this.n.remove(this.l);
        }
    }

    public static t6 w2() {
        return p;
    }

    public static /* synthetic */ void y2(IInterface iInterface, p6 p6Var) {
        p10.b.b(iInterface, p6Var.b());
    }

    @Override // androidx.appcompat.view.menu.j00
    public p6 A0() {
        p6 p6Var;
        synchronized (this.m) {
            p6Var = this.m.q;
        }
        return p6Var;
    }

    public void A2() {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        Parcel obtain = Parcel.obtain();
        try {
            try {
                if (!lv0.o().exists()) {
                    obtain.recycle();
                    fc.a(null);
                    return;
                }
                fileInputStream = new FileInputStream(lv0.o());
                try {
                    byte[] k = lr.k(fileInputStream);
                    obtain.unmarshall(k, 0, k.length);
                    obtain.setDataPosition(0);
                    synchronized (this.m) {
                        this.m.a(obtain);
                    }
                    synchronized (this.l) {
                        try {
                            this.l.clear();
                            int readInt = obtain.readInt();
                            for (int i = 0; i < readInt; i++) {
                                this.l.put(obtain.readInt(), obtain.readHashMap(q6.class.getClassLoader()));
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    obtain.recycle();
                    fc.a(fileInputStream);
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    lr.d(lv0.o());
                    obtain.recycle();
                    fc.a(fileInputStream);
                }
            } catch (Throwable th3) {
                th = th3;
                obtain.recycle();
                fc.a(null);
                throw th;
            }
        } catch (Exception e3) {
            fileInputStream = null;
            e = e3;
        } catch (Throwable th4) {
            th = th4;
            obtain.recycle();
            fc.a(null);
            throw th;
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public p6 B(int i, String str) {
        q6 x2 = x2(i, str);
        int i2 = x2.m;
        if (i2 == 1) {
            return this.m.q;
        }
        if (i2 != 2) {
            return null;
        }
        return x2.q;
    }

    public void B2() {
        synchronized (this.m) {
            synchronized (this.l) {
                Parcel obtain = Parcel.obtain();
                AtomicFile atomicFile = new AtomicFile(lv0.o());
                FileOutputStream fileOutputStream = null;
                try {
                    this.m.writeToParcel(obtain, 0);
                    obtain.writeInt(this.l.size());
                    for (int i = 0; i < this.l.size(); i++) {
                        int keyAt = this.l.keyAt(i);
                        HashMap hashMap = (HashMap) this.l.valueAt(i);
                        obtain.writeInt(keyAt);
                        obtain.writeMap(hashMap);
                    }
                    obtain.setDataPosition(0);
                    fileOutputStream = atomicFile.startWrite();
                    lr.l(obtain, fileOutputStream);
                    atomicFile.finishWrite(fileOutputStream);
                    obtain.recycle();
                    fc.a(fileOutputStream);
                } catch (Throwable th) {
                    try {
                        th.printStackTrace();
                        atomicFile.failWrite(fileOutputStream);
                        obtain.recycle();
                        fc.a(fileOutputStream);
                    } catch (Throwable th2) {
                        obtain.recycle();
                        fc.a(fileOutputStream);
                        throw th2;
                    }
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public void C0(int i, String str, p6 p6Var) {
        synchronized (this.l) {
            x2(i, str).q = p6Var;
            B2();
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public void G1(int i, String str, List list) {
        synchronized (this.l) {
            x2(i, str).o = list;
            B2();
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public void J(List list) {
        synchronized (this.m) {
            this.m.p = list;
            B2();
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public List J0(int i, String str) {
        List list;
        synchronized (this.l) {
            list = x2(i, str).o;
        }
        return list;
    }

    @Override // androidx.appcompat.view.menu.j00
    public int K0(int i, String str) {
        int i2;
        synchronized (this.l) {
            i2 = x2(i, str).m;
        }
        return i2;
    }

    @Override // androidx.appcompat.view.menu.j00
    public void L(List list) {
        synchronized (this.m) {
            this.m.o = list;
            B2();
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public void P0(int i, String str, int i2) {
        synchronized (this.l) {
            x2(i, str).m = i2;
            B2();
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public void e1(int i, String str, n6 n6Var) {
        synchronized (this.l) {
            x2(i, str).n = n6Var;
            B2();
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public n6 h2(int i, String str) {
        q6 x2 = x2(i, str);
        int i2 = x2.m;
        if (i2 == 1) {
            return this.m.n;
        }
        if (i2 != 2) {
            return null;
        }
        return x2.n;
    }

    @Override // androidx.appcompat.view.menu.i30
    public void j() {
        A2();
        Iterator it = this.n.keySet().iterator();
        while (it.hasNext()) {
            v2((IBinder) it.next());
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public void k0(IBinder iBinder, String str, int i) {
        if (iBinder == null || !iBinder.pingBinder() || this.n.containsKey(iBinder)) {
            return;
        }
        iBinder.linkToDeath(new a(iBinder), 0);
        this.n.put(iBinder, new y90(str, i));
        v2(iBinder);
    }

    @Override // androidx.appcompat.view.menu.j00
    public void l0(n6 n6Var) {
        synchronized (this.m) {
            this.m.n = n6Var;
            B2();
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public List p2(int i, String str) {
        q6 x2 = x2(i, str);
        int i2 = x2.m;
        if (i2 == 1) {
            return this.m.o;
        }
        if (i2 != 2) {
            return null;
        }
        return x2.o;
    }

    @Override // androidx.appcompat.view.menu.j00
    public List q0() {
        List list;
        synchronized (this.m) {
            list = this.m.p;
        }
        return list;
    }

    @Override // androidx.appcompat.view.menu.j00
    public void s2(int i, String str, List list) {
        synchronized (this.l) {
            x2(i, str).o = list;
            B2();
        }
    }

    @Override // androidx.appcompat.view.menu.j00
    public void t0(p6 p6Var) {
        synchronized (this.m) {
            this.m.q = p6Var;
            B2();
        }
    }

    public final void v2(final IBinder iBinder) {
        this.o.execute(new Runnable() { // from class: androidx.appcompat.view.menu.r6
            @Override // java.lang.Runnable
            public final void run() {
                t6.this.z2(iBinder);
            }
        });
    }

    @Override // androidx.appcompat.view.menu.j00
    public void x(IBinder iBinder) {
        if (iBinder == null || !iBinder.pingBinder()) {
            return;
        }
        this.n.remove(iBinder);
    }

    public final q6 x2(int i, String str) {
        q6 q6Var;
        synchronized (this.l) {
            try {
                HashMap hashMap = (HashMap) this.l.get(i);
                if (hashMap == null) {
                    hashMap = new HashMap();
                    this.l.put(i, hashMap);
                }
                q6Var = (q6) hashMap.get(str);
                if (q6Var == null) {
                    q6Var = new q6();
                    q6Var.m = 0;
                    hashMap.put(str, q6Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return q6Var;
    }

    public final /* synthetic */ void z2(IBinder iBinder) {
        final p6 B;
        long currentTimeMillis = System.currentTimeMillis();
        Object obj = null;
        while (iBinder.pingBinder()) {
            final IInterface iInterface = (IInterface) p10.a.b.b(iBinder);
            y90 y90Var = (y90) this.n.get(iBinder);
            if (y90Var != null && (B = B(y90Var.b, y90Var.a)) != null) {
                if (!B.equals(obj) || System.currentTimeMillis() - currentTimeMillis >= 3000) {
                    currentTimeMillis = System.currentTimeMillis();
                    yu0.h().n().post(new Runnable() { // from class: androidx.appcompat.view.menu.s6
                        @Override // java.lang.Runnable
                        public final void run() {
                            t6.y2(iInterface, B);
                        }
                    });
                    obj = B;
                } else {
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }
}
