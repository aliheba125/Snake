package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public interface pu extends jm {

    public static final class a {
        public static final C0028a b = new C0028a(null);
        public static final a c = new a("NONE");
        public static final a d = new a("FULL");
        public final String a;

        /* renamed from: androidx.appcompat.view.menu.pu$a$a, reason: collision with other inner class name */
        public static final class C0028a {
            public C0028a() {
            }

            public /* synthetic */ C0028a(lj ljVar) {
                this();
            }
        }

        public a(String str) {
            this.a = str;
        }

        public String toString() {
            return this.a;
        }
    }

    public static final class b {
        public static final a b = new a(null);
        public static final b c = new b("FLAT");
        public static final b d = new b("HALF_OPENED");
        public final String a;

        public static final class a {
            public a() {
            }

            public /* synthetic */ a(lj ljVar) {
                this();
            }
        }

        public b(String str) {
            this.a = str;
        }

        public String toString() {
            return this.a;
        }
    }

    a b();

    b getState();
}
