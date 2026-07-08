package androidx.appcompat.view.menu;

import java.io.IOException;

/* loaded from: classes.dex */
public class s12 extends IOException {
    public w32 m;

    public s12(String str) {
        super(str);
        this.m = null;
    }

    public static r12 a() {
        return new r12("Protocol message tag had invalid wire type.");
    }

    public static s12 b() {
        return new s12("Protocol message contained an invalid tag (zero).");
    }

    public static s12 c() {
        return new s12("Protocol message had invalid UTF-8.");
    }

    public static s12 d() {
        return new s12("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static s12 e() {
        return new s12("Failed to parse the message.");
    }

    public static s12 f() {
        return new s12("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
