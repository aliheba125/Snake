package androidx.appcompat.view.menu;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class a62 extends q62 {
    public final /* synthetic */ s52 n;

    @Override // androidx.appcompat.view.menu.q62, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new w52(this.n);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a62(s52 s52Var) {
        super(s52Var);
        this.n = s52Var;
    }
}
