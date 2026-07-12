package androidx.appcompat.view.menu;

import android.os.Bundle;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ki1 implements Iterator {
    public Iterator m;
    public final /* synthetic */ ei1 n;

    public ki1(ei1 ei1Var) {
        Bundle bundle;
        this.n = ei1Var;
        bundle = ei1Var.m;
        this.m = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.m.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return (String) this.m.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
