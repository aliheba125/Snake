package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.i8;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class kd0 {
    public final i8 a;
    public final String b;
    public final ld0 c;

    public final class a implements i8.a {
        public final c a;

        /* renamed from: androidx.appcompat.view.menu.kd0$a$a, reason: collision with other inner class name */
        public class C0015a implements d {
            public final /* synthetic */ i8.b a;

            public C0015a(i8.b bVar) {
                this.a = bVar;
            }

            @Override // androidx.appcompat.view.menu.kd0.d
            public void a() {
                this.a.a(null);
            }

            @Override // androidx.appcompat.view.menu.kd0.d
            public void b(String str, String str2, Object obj) {
                this.a.a(kd0.this.c.c(str, str2, obj));
            }

            @Override // androidx.appcompat.view.menu.kd0.d
            public void c(Object obj) {
                this.a.a(kd0.this.c.a(obj));
            }
        }

        public a(c cVar) {
            this.a = cVar;
        }

        @Override // androidx.appcompat.view.menu.i8.a
        public void a(ByteBuffer byteBuffer, i8.b bVar) {
            try {
                this.a.C(kd0.this.c.d(byteBuffer), new C0015a(bVar));
            } catch (RuntimeException e) {
                ea0.c("MethodChannel#" + kd0.this.b, "Failed to handle method call", e);
                bVar.a(kd0.this.c.b("error", e.getMessage(), null, ea0.d(e)));
            }
        }
    }

    public final class b implements i8.b {
        public final d a;

        public b(d dVar) {
            this.a = dVar;
        }

        @Override // androidx.appcompat.view.menu.i8.b
        public void a(ByteBuffer byteBuffer) {
            try {
                if (byteBuffer == null) {
                    this.a.a();
                } else {
                    try {
                        this.a.c(kd0.this.c.e(byteBuffer));
                    } catch (lt e) {
                        this.a.b(e.m, e.getMessage(), e.n);
                    }
                }
            } catch (RuntimeException e2) {
                ea0.c("MethodChannel#" + kd0.this.b, "Failed to handle method call result", e2);
            }
        }
    }

    public interface c {
        void C(id0 id0Var, d dVar);
    }

    public interface d {
        void a();

        void b(String str, String str2, Object obj);

        void c(Object obj);
    }

    public kd0(i8 i8Var, String str) {
        this(i8Var, str, qw0.b);
    }

    public void c(String str, Object obj) {
        d(str, obj, null);
    }

    public void d(String str, Object obj, d dVar) {
        this.a.b(this.b, this.c.f(new id0(str, obj)), dVar == null ? null : new b(dVar));
    }

    public void e(c cVar) {
        this.a.a(this.b, cVar == null ? null : new a(cVar));
    }

    public kd0(i8 i8Var, String str, ld0 ld0Var) {
        this(i8Var, str, ld0Var, null);
    }

    public kd0(i8 i8Var, String str, ld0 ld0Var, i8.c cVar) {
        this.a = i8Var;
        this.b = str;
        this.c = ld0Var;
    }
}
