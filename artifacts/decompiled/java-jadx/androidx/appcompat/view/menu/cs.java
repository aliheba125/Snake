package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class cs extends tr {
    public final a m;

    public enum a {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public cs(a aVar) {
        this.m = aVar;
    }

    public cs(String str, a aVar) {
        super(str);
        this.m = aVar;
    }
}
