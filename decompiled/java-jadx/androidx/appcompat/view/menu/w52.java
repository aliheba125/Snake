package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class w52 implements Iterator {
    public int m;
    public Iterator n;
    public final /* synthetic */ s52 o;

    public final Iterator b() {
        Map map;
        if (this.n == null) {
            map = this.o.r;
            this.n = map.entrySet().iterator();
        }
        return this.n;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.m;
        if (i > 0) {
            list = this.o.n;
            if (i <= list.size()) {
                return true;
            }
        }
        return b().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (b().hasNext()) {
            return (Map.Entry) b().next();
        }
        list = this.o.n;
        int i = this.m - 1;
        this.m = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public w52(s52 s52Var) {
        List list;
        this.o = s52Var;
        list = s52Var.n;
        this.m = list.size();
    }
}
