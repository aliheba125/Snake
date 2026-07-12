package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class b60 {

    public static final class a extends lp0 {
        public int n;
        public final /* synthetic */ tw o;
        public final /* synthetic */ Object p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(xg xgVar, tw twVar, Object obj) {
            super(xgVar);
            this.o = twVar;
            this.p = obj;
            z50.c(xgVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // androidx.appcompat.view.menu.y7
        public Object k(Object obj) {
            int i = this.n;
            if (i == 0) {
                this.n = 1;
                op0.b(obj);
                z50.c(this.o, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((tw) q21.a(this.o, 2)).h(this.p, this);
            }
            if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.n = 2;
            op0.b(obj);
            return obj;
        }
    }

    public static final class b extends zg {
        public int p;
        public final /* synthetic */ tw q;
        public final /* synthetic */ Object r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(xg xgVar, kh khVar, tw twVar, Object obj) {
            super(xgVar, khVar);
            this.q = twVar;
            this.r = obj;
            z50.c(xgVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // androidx.appcompat.view.menu.y7
        public Object k(Object obj) {
            int i = this.p;
            if (i == 0) {
                this.p = 1;
                op0.b(obj);
                z50.c(this.q, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((tw) q21.a(this.q, 2)).h(this.r, this);
            }
            if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.p = 2;
            op0.b(obj);
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static xg a(tw twVar, Object obj, xg xgVar) {
        z50.e(twVar, "<this>");
        z50.e(xgVar, "completion");
        xg a2 = gj.a(xgVar);
        if (twVar instanceof y7) {
            return ((y7) twVar).a(obj, a2);
        }
        kh b2 = a2.b();
        return b2 == bo.m ? new a(a2, twVar, obj) : new b(a2, b2, twVar, obj);
    }

    public static xg b(xg xgVar) {
        xg m;
        z50.e(xgVar, "<this>");
        zg zgVar = xgVar instanceof zg ? (zg) xgVar : null;
        return (zgVar == null || (m = zgVar.m()) == null) ? xgVar : m;
    }
}
