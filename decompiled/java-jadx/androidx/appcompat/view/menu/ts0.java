package androidx.appcompat.view.menu;

import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class ts0 extends ss0 {

    public static final class a implements ps0 {
        public final /* synthetic */ Iterator a;

        public a(Iterator it) {
            this.a = it;
        }

        @Override // androidx.appcompat.view.menu.ps0
        public Iterator iterator() {
            return this.a;
        }
    }

    public static ps0 a(Iterator it) {
        z50.e(it, "<this>");
        return b(new a(it));
    }

    public static final ps0 b(ps0 ps0Var) {
        z50.e(ps0Var, "<this>");
        return ps0Var instanceof jf ? ps0Var : new jf(ps0Var);
    }
}
