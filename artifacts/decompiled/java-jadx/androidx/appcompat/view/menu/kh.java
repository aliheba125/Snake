package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ah;

/* loaded from: classes.dex */
public interface kh {

    public static final class a {

        /* renamed from: androidx.appcompat.view.menu.kh$a$a, reason: collision with other inner class name */
        public static final class C0016a extends g80 implements tw {
            public static final C0016a n = new C0016a();

            public C0016a() {
                super(2);
            }

            @Override // androidx.appcompat.view.menu.tw
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final kh h(kh khVar, b bVar) {
                dd ddVar;
                z50.e(khVar, "acc");
                z50.e(bVar, "element");
                kh j = khVar.j(bVar.getKey());
                bo boVar = bo.m;
                if (j == boVar) {
                    return bVar;
                }
                ah.b bVar2 = ah.b;
                ah ahVar = (ah) j.d(bVar2);
                if (ahVar == null) {
                    ddVar = new dd(j, bVar);
                } else {
                    kh j2 = j.j(bVar2);
                    if (j2 == boVar) {
                        return new dd(bVar, ahVar);
                    }
                    ddVar = new dd(new dd(j2, bVar), ahVar);
                }
                return ddVar;
            }
        }

        public static kh a(kh khVar, kh khVar2) {
            z50.e(khVar2, "context");
            return khVar2 == bo.m ? khVar : (kh) khVar2.p(khVar, C0016a.n);
        }
    }

    public interface b extends kh {

        public static final class a {
            public static Object a(b bVar, Object obj, tw twVar) {
                z50.e(twVar, "operation");
                return twVar.h(obj, bVar);
            }

            public static b b(b bVar, c cVar) {
                z50.e(cVar, "key");
                if (!z50.a(bVar.getKey(), cVar)) {
                    return null;
                }
                z50.c(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                return bVar;
            }

            public static kh c(b bVar, c cVar) {
                z50.e(cVar, "key");
                return z50.a(bVar.getKey(), cVar) ? bo.m : bVar;
            }

            public static kh d(b bVar, kh khVar) {
                z50.e(khVar, "context");
                return a.a(bVar, khVar);
            }
        }

        @Override // androidx.appcompat.view.menu.kh
        b d(c cVar);

        c getKey();
    }

    public interface c {
    }

    b d(c cVar);

    kh j(c cVar);

    kh o(kh khVar);

    Object p(Object obj, tw twVar);
}
