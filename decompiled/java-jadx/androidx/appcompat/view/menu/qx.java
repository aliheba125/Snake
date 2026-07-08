package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import androidx.appcompat.view.menu.m2;
import androidx.appcompat.view.menu.zx;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class qx extends z7 implements m2.f {
    public final ac Q;
    public final Set R;
    public final Account S;

    public qx(Context context, Looper looper, int i, ac acVar, zx.a aVar, zx.b bVar) {
        this(context, looper, i, acVar, (df) aVar, (hg0) bVar);
    }

    @Override // androidx.appcompat.view.menu.z7
    public final Set C() {
        return this.R;
    }

    @Override // androidx.appcompat.view.menu.m2.f
    public Set b() {
        return o() ? this.R : Collections.emptySet();
    }

    public Set j0(Set set) {
        return set;
    }

    public final Set k0(Set set) {
        Set j0 = j0(set);
        Iterator it = j0.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return j0;
    }

    @Override // androidx.appcompat.view.menu.z7
    public final Account u() {
        return this.S;
    }

    @Override // androidx.appcompat.view.menu.z7
    public final Executor w() {
        return null;
    }

    public qx(Context context, Looper looper, int i, ac acVar, df dfVar, hg0 hg0Var) {
        this(context, looper, rx.b(context), xx.m(), i, acVar, (df) mj0.i(dfVar), (hg0) mj0.i(hg0Var));
    }

    public qx(Context context, Looper looper, rx rxVar, xx xxVar, int i, ac acVar, df dfVar, hg0 hg0Var) {
        super(context, looper, rxVar, xxVar, i, dfVar == null ? null : new dd1(dfVar), hg0Var == null ? null : new gd1(hg0Var), acVar.h());
        this.Q = acVar;
        this.S = acVar.a();
        this.R = k0(acVar.c());
    }
}
