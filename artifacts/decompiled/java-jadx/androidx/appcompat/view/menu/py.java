package androidx.appcompat.view.menu;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class py extends qy {
    private volatile py _immediate;
    public final Handler o;
    public final String p;
    public final boolean q;
    public final py r;

    public py(Handler handler, String str, boolean z) {
        super(null);
        this.o = handler;
        this.p = str;
        this.q = z;
        this._immediate = z ? this : null;
        py pyVar = this._immediate;
        if (pyVar == null) {
            pyVar = new py(handler, str, true);
            this._immediate = pyVar;
        }
        this.r = pyVar;
    }

    @Override // androidx.appcompat.view.menu.nh
    public void A(kh khVar, Runnable runnable) {
        if (this.o.post(runnable)) {
            return;
        }
        H(khVar, runnable);
    }

    @Override // androidx.appcompat.view.menu.nh
    public boolean D(kh khVar) {
        return (this.q && z50.a(Looper.myLooper(), this.o.getLooper())) ? false : true;
    }

    public final void H(kh khVar, Runnable runnable) {
        x60.c(khVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        fm.b().A(khVar, runnable);
    }

    @Override // androidx.appcompat.view.menu.qa0
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public py F() {
        return this.r;
    }

    public boolean equals(Object obj) {
        return (obj instanceof py) && ((py) obj).o == this.o;
    }

    public int hashCode() {
        return System.identityHashCode(this.o);
    }

    @Override // androidx.appcompat.view.menu.nh
    public String toString() {
        String G = G();
        if (G != null) {
            return G;
        }
        String str = this.p;
        if (str == null) {
            str = this.o.toString();
        }
        if (!this.q) {
            return str;
        }
        return str + ".immediate";
    }

    public /* synthetic */ py(Handler handler, String str, int i, lj ljVar) {
        this(handler, (i & 2) != 0 ? null : str);
    }

    public py(Handler handler, String str) {
        this(handler, str, false);
    }
}
