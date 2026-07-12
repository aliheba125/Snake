package androidx.appcompat.view.menu;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class j60 {

    public class a extends t31 {
        public boolean m;
        public final /* synthetic */ Object n;

        public a(Object obj) {
            this.n = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.m;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.m) {
                throw new NoSuchElementException();
            }
            this.m = true;
            return this.n;
        }
    }

    public static boolean a(Collection collection, Iterator it) {
        nj0.i(collection);
        nj0.i(it);
        boolean z = false;
        while (it.hasNext()) {
            z |= collection.add(it.next());
        }
        return z;
    }

    public static boolean b(Iterator it, Iterator it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !xf0.a(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static t31 c(Object obj) {
        return new a(obj);
    }
}
