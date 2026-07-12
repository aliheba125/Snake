package androidx.appcompat.view.menu;

import android.os.Parcel;
import androidx.appcompat.view.menu.o00;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class f7 extends o00.a implements i30 {
    public static final f7 n = new f7();
    public final HashMap l = new HashMap();
    public final Object m = new Object();

    public static f7 k() {
        return n;
    }

    @Override // androidx.appcompat.view.menu.o00
    public e7 F(int i) {
        e7 e7Var;
        synchronized (this.m) {
            e7Var = (e7) this.l.get(Integer.valueOf(i));
        }
        return e7Var;
    }

    @Override // androidx.appcompat.view.menu.o00
    public boolean H1(int i) {
        boolean z;
        synchronized (this.l) {
            z = this.l.get(Integer.valueOf(i)) != null;
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.o00
    public e7 c2(int i) {
        synchronized (this.m) {
            try {
                if (H1(i)) {
                    return F(i);
                }
                return h(i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.o00
    public void g(int i) {
        synchronized (this.m) {
            synchronized (this.l) {
                x6.w2().g(i);
                this.l.remove(Integer.valueOf(i));
                u2();
                lr.d(lv0.v(i));
                lr.d(lv0.n(i));
            }
        }
    }

    public final e7 h(int i) {
        e7 e7Var = new e7();
        e7Var.m = i;
        e7Var.n = g7.ENABLE;
        this.l.put(Integer.valueOf(i), e7Var);
        synchronized (this.l) {
            u2();
        }
        return e7Var;
    }

    @Override // androidx.appcompat.view.menu.o00
    public List h1() {
        ArrayList arrayList;
        synchronized (this.l) {
            try {
                arrayList = new ArrayList();
                for (e7 e7Var : this.l.values()) {
                    if (e7Var.m >= 0) {
                        arrayList.add(e7Var);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    @Override // androidx.appcompat.view.menu.i30
    public void j() {
        v2();
    }

    public final void u2() {
        Parcel obtain = Parcel.obtain();
        c5 c5Var = new c5(lv0.w());
        try {
            obtain.writeTypedList(new ArrayList(this.l.values()));
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    fileOutputStream = c5Var.d();
                    lr.l(obtain, fileOutputStream);
                    c5Var.b(fileOutputStream);
                    fc.a(fileOutputStream);
                } catch (Throwable th) {
                    fc.a(fileOutputStream);
                    throw th;
                }
            } catch (IOException e) {
                e.printStackTrace();
                c5Var.a(fileOutputStream);
                fc.a(fileOutputStream);
            }
        } finally {
            obtain.recycle();
        }
    }

    public final void v2() {
        FileInputStream fileInputStream;
        Throwable th;
        Exception e;
        ArrayList createTypedArrayList;
        synchronized (this.m) {
            Parcel obtain = Parcel.obtain();
            try {
            } catch (Exception e2) {
                fileInputStream = null;
                e = e2;
            } catch (Throwable th2) {
                fileInputStream = null;
                th = th2;
                obtain.recycle();
                fc.a(fileInputStream);
                throw th;
            }
            if (!lv0.w().exists()) {
                obtain.recycle();
                fc.a(null);
                return;
            }
            fileInputStream = new FileInputStream(lv0.w());
            try {
                try {
                    byte[] k = lr.k(fileInputStream);
                    obtain.unmarshall(k, 0, k.length);
                    obtain.setDataPosition(0);
                    createTypedArrayList = obtain.createTypedArrayList(e7.CREATOR);
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    obtain.recycle();
                    fc.a(fileInputStream);
                }
                if (createTypedArrayList == null) {
                    obtain.recycle();
                    fc.a(fileInputStream);
                    return;
                }
                synchronized (this.l) {
                    try {
                        this.l.clear();
                        Iterator it = createTypedArrayList.iterator();
                        while (it.hasNext()) {
                            e7 e7Var = (e7) it.next();
                            this.l.put(Integer.valueOf(e7Var.m), e7Var);
                        }
                    } finally {
                    }
                }
                obtain.recycle();
                fc.a(fileInputStream);
            } catch (Throwable th3) {
                th = th3;
                obtain.recycle();
                fc.a(fileInputStream);
                throw th;
            }
        }
    }
}
