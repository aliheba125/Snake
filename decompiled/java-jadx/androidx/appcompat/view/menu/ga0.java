package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ga0 {
    public static final ga0 c = new a().a();
    public final long a;
    public final b b;

    public static final class a {
        public long a = 0;
        public b b = b.REASON_UNKNOWN;

        public ga0 a() {
            return new ga0(this.a, this.b);
        }

        public a b(long j) {
            this.a = j;
            return this;
        }

        public a c(b bVar) {
            this.b = bVar;
            return this;
        }
    }

    public enum b implements wk0 {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);

        public final int m;

        b(int i) {
            this.m = i;
        }

        @Override // androidx.appcompat.view.menu.wk0
        public int c() {
            return this.m;
        }
    }

    public ga0(long j, b bVar) {
        this.a = j;
        this.b = bVar;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.a;
    }

    public b b() {
        return this.b;
    }
}
