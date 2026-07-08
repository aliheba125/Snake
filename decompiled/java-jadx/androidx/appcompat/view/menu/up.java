package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kh;
import java.io.Closeable;

/* loaded from: classes.dex */
public abstract class up extends nh implements Closeable {
    public static final a o = new a(null);

    public static final class a extends i {

        /* renamed from: androidx.appcompat.view.menu.up$a$a, reason: collision with other inner class name */
        public static final class C0031a extends g80 implements fw {
            public static final C0031a n = new C0031a();

            public C0031a() {
                super(1);
            }

            @Override // androidx.appcompat.view.menu.fw
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final up i(kh.b bVar) {
                if (bVar instanceof up) {
                    return (up) bVar;
                }
                return null;
            }
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public a() {
            super(nh.n, C0031a.n);
        }
    }
}
