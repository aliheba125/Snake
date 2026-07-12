package androidx.appcompat.view.menu;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;

/* loaded from: classes.dex */
public abstract class kc0 {
    public static final b a = new b(null);

    public static final class a extends kc0 {
        public final jc0 b;

        /* renamed from: androidx.appcompat.view.menu.kc0$a$a, reason: collision with other inner class name */
        public static final class C0014a extends ly0 implements tw {
            public int q;

            public C0014a(hl hlVar, xg xgVar) {
                super(2, xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final xg a(Object obj, xg xgVar) {
                return a.this.new C0014a(null, xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final Object k(Object obj) {
                Object c;
                c = c60.c();
                int i = this.q;
                if (i == 0) {
                    op0.b(obj);
                    jc0 jc0Var = a.this.b;
                    this.q = 1;
                    if (jc0Var.a(null, this) == c) {
                        return c;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    op0.b(obj);
                }
                return r31.a;
            }

            @Override // androidx.appcompat.view.menu.tw
            /* renamed from: o, reason: merged with bridge method [inline-methods] */
            public final Object h(th thVar, xg xgVar) {
                return ((C0014a) a(thVar, xgVar)).k(r31.a);
            }
        }

        public static final class b extends ly0 implements tw {
            public int q;

            public b(xg xgVar) {
                super(2, xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final xg a(Object obj, xg xgVar) {
                return a.this.new b(xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final Object k(Object obj) {
                Object c;
                c = c60.c();
                int i = this.q;
                if (i == 0) {
                    op0.b(obj);
                    jc0 jc0Var = a.this.b;
                    this.q = 1;
                    obj = jc0Var.b(this);
                    if (obj == c) {
                        return c;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    op0.b(obj);
                }
                return obj;
            }

            @Override // androidx.appcompat.view.menu.tw
            /* renamed from: o, reason: merged with bridge method [inline-methods] */
            public final Object h(th thVar, xg xgVar) {
                return ((b) a(thVar, xgVar)).k(r31.a);
            }
        }

        public static final class c extends ly0 implements tw {
            public int q;
            public final /* synthetic */ Uri s;
            public final /* synthetic */ InputEvent t;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Uri uri, InputEvent inputEvent, xg xgVar) {
                super(2, xgVar);
                this.s = uri;
                this.t = inputEvent;
            }

            @Override // androidx.appcompat.view.menu.y7
            public final xg a(Object obj, xg xgVar) {
                return a.this.new c(this.s, this.t, xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final Object k(Object obj) {
                Object c;
                c = c60.c();
                int i = this.q;
                if (i == 0) {
                    op0.b(obj);
                    jc0 jc0Var = a.this.b;
                    Uri uri = this.s;
                    InputEvent inputEvent = this.t;
                    this.q = 1;
                    if (jc0Var.c(uri, inputEvent, this) == c) {
                        return c;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    op0.b(obj);
                }
                return r31.a;
            }

            @Override // androidx.appcompat.view.menu.tw
            /* renamed from: o, reason: merged with bridge method [inline-methods] */
            public final Object h(th thVar, xg xgVar) {
                return ((c) a(thVar, xgVar)).k(r31.a);
            }
        }

        public static final class d extends ly0 implements tw {
            public int q;
            public final /* synthetic */ Uri s;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Uri uri, xg xgVar) {
                super(2, xgVar);
                this.s = uri;
            }

            @Override // androidx.appcompat.view.menu.y7
            public final xg a(Object obj, xg xgVar) {
                return a.this.new d(this.s, xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final Object k(Object obj) {
                Object c;
                c = c60.c();
                int i = this.q;
                if (i == 0) {
                    op0.b(obj);
                    jc0 jc0Var = a.this.b;
                    Uri uri = this.s;
                    this.q = 1;
                    if (jc0Var.d(uri, this) == c) {
                        return c;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    op0.b(obj);
                }
                return r31.a;
            }

            @Override // androidx.appcompat.view.menu.tw
            /* renamed from: o, reason: merged with bridge method [inline-methods] */
            public final Object h(th thVar, xg xgVar) {
                return ((d) a(thVar, xgVar)).k(r31.a);
            }
        }

        public static final class e extends ly0 implements tw {
            public int q;

            public e(t71 t71Var, xg xgVar) {
                super(2, xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final xg a(Object obj, xg xgVar) {
                return a.this.new e(null, xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final Object k(Object obj) {
                Object c;
                c = c60.c();
                int i = this.q;
                if (i == 0) {
                    op0.b(obj);
                    jc0 jc0Var = a.this.b;
                    this.q = 1;
                    if (jc0Var.e(null, this) == c) {
                        return c;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    op0.b(obj);
                }
                return r31.a;
            }

            @Override // androidx.appcompat.view.menu.tw
            /* renamed from: o, reason: merged with bridge method [inline-methods] */
            public final Object h(th thVar, xg xgVar) {
                return ((e) a(thVar, xgVar)).k(r31.a);
            }
        }

        public static final class f extends ly0 implements tw {
            public int q;

            public f(u71 u71Var, xg xgVar) {
                super(2, xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final xg a(Object obj, xg xgVar) {
                return a.this.new f(null, xgVar);
            }

            @Override // androidx.appcompat.view.menu.y7
            public final Object k(Object obj) {
                Object c;
                c = c60.c();
                int i = this.q;
                if (i == 0) {
                    op0.b(obj);
                    jc0 jc0Var = a.this.b;
                    this.q = 1;
                    if (jc0Var.f(null, this) == c) {
                        return c;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    op0.b(obj);
                }
                return r31.a;
            }

            @Override // androidx.appcompat.view.menu.tw
            /* renamed from: o, reason: merged with bridge method [inline-methods] */
            public final Object h(th thVar, xg xgVar) {
                return ((f) a(thVar, xgVar)).k(r31.a);
            }
        }

        public a(jc0 jc0Var) {
            z50.e(jc0Var, "mMeasurementManager");
            this.b = jc0Var;
        }

        @Override // androidx.appcompat.view.menu.kc0
        public j90 b() {
            ok b2;
            b2 = c9.b(uh.a(fm.a()), null, null, new b(null), 3, null);
            return jh.c(b2, null, 1, null);
        }

        @Override // androidx.appcompat.view.menu.kc0
        public j90 c(Uri uri) {
            ok b2;
            z50.e(uri, "trigger");
            b2 = c9.b(uh.a(fm.a()), null, null, new d(uri, null), 3, null);
            return jh.c(b2, null, 1, null);
        }

        public j90 e(hl hlVar) {
            ok b2;
            z50.e(hlVar, "deletionRequest");
            b2 = c9.b(uh.a(fm.a()), null, null, new C0014a(hlVar, null), 3, null);
            return jh.c(b2, null, 1, null);
        }

        public j90 f(Uri uri, InputEvent inputEvent) {
            ok b2;
            z50.e(uri, "attributionSource");
            b2 = c9.b(uh.a(fm.a()), null, null, new c(uri, inputEvent, null), 3, null);
            return jh.c(b2, null, 1, null);
        }

        public j90 g(t71 t71Var) {
            ok b2;
            z50.e(t71Var, "request");
            b2 = c9.b(uh.a(fm.a()), null, null, new e(t71Var, null), 3, null);
            return jh.c(b2, null, 1, null);
        }

        public j90 h(u71 u71Var) {
            ok b2;
            z50.e(u71Var, "request");
            b2 = c9.b(uh.a(fm.a()), null, null, new f(u71Var, null), 3, null);
            return jh.c(b2, null, 1, null);
        }
    }

    public static final class b {
        public b() {
        }

        public /* synthetic */ b(lj ljVar) {
            this();
        }

        public final kc0 a(Context context) {
            z50.e(context, "context");
            jc0 a = jc0.a.a(context);
            if (a != null) {
                return new a(a);
            }
            return null;
        }
    }

    public static final kc0 a(Context context) {
        return a.a(context);
    }

    public abstract j90 b();

    public abstract j90 c(Uri uri);
}
