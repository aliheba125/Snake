package androidx.appcompat.view.menu;

import java.util.Random;

/* loaded from: classes.dex */
public final class tq extends o {
    public final a o = new a();

    public static final class a extends ThreadLocal {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Random initialValue() {
            return new Random();
        }
    }

    @Override // androidx.appcompat.view.menu.o
    public Random c() {
        Object obj = this.o.get();
        z50.d(obj, "implStorage.get()");
        return (Random) obj;
    }
}
