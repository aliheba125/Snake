package androidx.appcompat.view.menu;

import android.app.PendingIntent;
import android.content.pm.PackageParser;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q02;
import androidx.appcompat.view.menu.wf0;

/* loaded from: classes.dex */
public final class ef extends r {
    public final int m;
    public final int n;
    public final PendingIntent o;
    public final String p;
    public static final ef q = new ef(0);
    public static final Parcelable.Creator<ef> CREATOR = new th1();

    public ef(int i, int i2, PendingIntent pendingIntent, String str) {
        this.m = i;
        this.n = i2;
        this.o = pendingIntent;
        this.p = str;
    }

    public static String p(int i) {
        if (i == 99) {
            return "UNFINISHED";
        }
        if (i == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case q02.c.c /* 3 */:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case q02.c.e /* 5 */:
                return "INVALID_ACCOUNT";
            case q02.c.f /* 6 */:
                return "RESOLUTION_REQUIRED";
            case q02.c.g /* 7 */:
                return "NETWORK_ERROR";
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    default:
                        return "UNKNOWN_ERROR_CODE(" + i + ")";
                }
        }
    }

    public int d() {
        return this.n;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ef)) {
            return false;
        }
        ef efVar = (ef) obj;
        return this.n == efVar.n && wf0.a(this.o, efVar.o) && wf0.a(this.p, efVar.p);
    }

    public String f() {
        return this.p;
    }

    public int hashCode() {
        return wf0.b(Integer.valueOf(this.n), this.o, this.p);
    }

    public PendingIntent i() {
        return this.o;
    }

    public boolean k() {
        return (this.n == 0 || this.o == null) ? false : true;
    }

    public boolean n() {
        return this.n == 0;
    }

    public String toString() {
        wf0.a c = wf0.c(this);
        c.a("statusCode", p(this.n));
        c.a("resolution", this.o);
        c.a("message", this.p);
        return c.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, this.m);
        jr0.i(parcel, 2, d());
        jr0.m(parcel, 3, i(), i, false);
        jr0.n(parcel, 4, f(), false);
        jr0.b(parcel, a);
    }

    public ef(int i) {
        this(i, null, null);
    }

    public ef(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ef(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }
}
