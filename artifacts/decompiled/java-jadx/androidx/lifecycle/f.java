package androidx.lifecycle;

import androidx.appcompat.view.menu.lj;
import androidx.appcompat.view.menu.q02;
import androidx.appcompat.view.menu.z50;
import androidx.appcompat.view.menu.z80;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class f {
    public AtomicReference a = new AtomicReference();

    public enum a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static final C0044a Companion = new C0044a(null);

        /* renamed from: androidx.lifecycle.f$a$a, reason: collision with other inner class name */
        public static final class C0044a {

            /* renamed from: androidx.lifecycle.f$a$a$a, reason: collision with other inner class name */
            public /* synthetic */ class C0045a {
                public static final /* synthetic */ int[] a;

                static {
                    int[] iArr = new int[b.values().length];
                    try {
                        iArr[b.CREATED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[b.STARTED.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[b.RESUMED.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[b.DESTROYED.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[b.INITIALIZED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    a = iArr;
                }
            }

            public C0044a() {
            }

            public /* synthetic */ C0044a(lj ljVar) {
                this();
            }

            public final a a(b bVar) {
                z50.e(bVar, "state");
                int i = C0045a.a[bVar.ordinal()];
                if (i == 1) {
                    return a.ON_DESTROY;
                }
                if (i == 2) {
                    return a.ON_STOP;
                }
                if (i != 3) {
                    return null;
                }
                return a.ON_PAUSE;
            }

            public final a b(b bVar) {
                z50.e(bVar, "state");
                int i = C0045a.a[bVar.ordinal()];
                if (i == 1) {
                    return a.ON_START;
                }
                if (i == 2) {
                    return a.ON_RESUME;
                }
                if (i != 5) {
                    return null;
                }
                return a.ON_CREATE;
            }
        }

        public /* synthetic */ class b {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[a.values().length];
                try {
                    iArr[a.ON_CREATE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[a.ON_STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[a.ON_START.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[a.ON_PAUSE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[a.ON_RESUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[a.ON_DESTROY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[a.ON_ANY.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                a = iArr;
            }
        }

        public final b e() {
            switch (b.a[ordinal()]) {
                case 1:
                case 2:
                    return b.CREATED;
                case q02.c.c /* 3 */:
                case 4:
                    return b.STARTED;
                case q02.c.e /* 5 */:
                    return b.RESUMED;
                case q02.c.f /* 6 */:
                    return b.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    public enum b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public final boolean e(b bVar) {
            z50.e(bVar, "state");
            return compareTo(bVar) >= 0;
        }
    }

    public abstract void a(z80 z80Var);

    public abstract b b();

    public abstract void c(z80 z80Var);
}
