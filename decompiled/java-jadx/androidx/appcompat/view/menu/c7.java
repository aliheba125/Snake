package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class c7 implements Parcelable {
    public int n;
    public final Object m = new Object();
    public List o = new ArrayList();

    public zu0 a(Account account) {
        zu0 zu0Var = new zu0();
        zu0Var.m = account;
        this.o.add(zu0Var);
        return zu0Var;
    }

    public boolean b(Account account) {
        return this.o.remove(d(account));
    }

    public long c(Account account) {
        zu0 d = d(account);
        if (d != null) {
            return d.r;
        }
        return -1L;
    }

    public zu0 d(Account account) {
        for (zu0 zu0Var : this.o) {
            if (zu0Var.b(account)) {
                return zu0Var;
            }
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Map e(Account account) {
        zu0 d = d(account);
        return d == null ? new HashMap() : d.o;
    }

    public Account[] f(String str) {
        ArrayList arrayList = new ArrayList();
        for (zu0 zu0Var : this.o) {
            if (zu0Var.m.type.equals(str)) {
                arrayList.add(zu0Var.m);
            }
        }
        return (Account[]) arrayList.toArray(new Account[0]);
    }

    public Map i(Account account) {
        zu0 d = d(account);
        return d == null ? new HashMap() : d.q;
    }

    public Map j(Account account) {
        zu0 d = d(account);
        return d == null ? new HashMap() : d.p;
    }

    public Account[] k() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.o.iterator();
        while (it.hasNext()) {
            arrayList.add(((zu0) it.next()).m);
        }
        return (Account[]) arrayList.toArray(new Account[0]);
    }

    public void l(Account account) {
        zu0 d = d(account);
        if (d != null) {
            d.r = System.currentTimeMillis();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.n);
        parcel.writeTypedList(this.o);
    }
}
