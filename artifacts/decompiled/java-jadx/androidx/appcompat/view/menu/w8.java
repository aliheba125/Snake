package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class w8 {
    public static final db a = new db(-1, null, null, 0);
    public static final int b;
    public static final int c;
    public static final my0 d;
    public static final my0 e;
    public static final my0 f;
    public static final my0 g;
    public static final my0 h;
    public static final my0 i;
    public static final my0 j;
    public static final my0 k;
    public static final my0 l;
    public static final my0 m;
    public static final my0 n;
    public static final my0 o;
    public static final my0 p;
    public static final my0 q;
    public static final my0 r;
    public static final my0 s;

    public /* synthetic */ class a extends fx implements tw {
        public static final a v = new a();

        public a() {
            super(2, w8.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
        }

        @Override // androidx.appcompat.view.menu.tw
        public /* bridge */ /* synthetic */ Object h(Object obj, Object obj2) {
            return k(((Number) obj).longValue(), (db) obj2);
        }

        public final db k(long j, db dbVar) {
            return w8.x(j, dbVar);
        }
    }

    static {
        int e2;
        int e3;
        e2 = vy0.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);
        b = e2;
        e3 = vy0.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);
        c = e3;
        d = new my0("BUFFERED");
        e = new my0("SHOULD_BUFFER");
        f = new my0("S_RESUMING_BY_RCV");
        g = new my0("RESUMING_BY_EB");
        h = new my0("POISONED");
        i = new my0("DONE_RCV");
        j = new my0("INTERRUPTED_SEND");
        k = new my0("INTERRUPTED_RCV");
        l = new my0("CHANNEL_CLOSED");
        m = new my0("SUSPEND");
        n = new my0("SUSPEND_NO_WAITER");
        o = new my0("FAILED");
        p = new my0("NO_RECEIVE_RESULT");
        q = new my0("CLOSE_HANDLER_CLOSED");
        r = new my0("CLOSE_HANDLER_INVOKED");
        s = new my0("NO_CLOSE_CAUSE");
    }

    public static final long A(int i2) {
        if (i2 == 0) {
            return 0L;
        }
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        return Long.MAX_VALUE;
    }

    public static final boolean B(x9 x9Var, Object obj, fw fwVar) {
        Object f2 = x9Var.f(obj, null, fwVar);
        if (f2 == null) {
            return false;
        }
        x9Var.D(f2);
        return true;
    }

    public static /* synthetic */ boolean C(x9 x9Var, Object obj, fw fwVar, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            fwVar = null;
        }
        return B(x9Var, obj, fwVar);
    }

    public static final long v(long j2, boolean z) {
        return (z ? 4611686018427387904L : 0L) + j2;
    }

    public static final long w(long j2, int i2) {
        return (i2 << 60) + j2;
    }

    public static final db x(long j2, db dbVar) {
        return new db(j2, dbVar, dbVar.u(), 0);
    }

    public static final n70 y() {
        return a.v;
    }

    public static final my0 z() {
        return l;
    }
}
