package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.AtomicFile;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class bu0 implements Parcelable {
    public String m;
    public int n;
    public int o;
    public static final Map p = new HashMap();
    public static final Parcelable.Creator<bu0> CREATOR = new a();

    public class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public bu0 createFromParcel(Parcel parcel) {
            return new bu0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public bu0[] newArray(int i) {
            return new bu0[i];
        }
    }

    public bu0(String str) {
        this.m = str;
    }

    public static void a() {
        Parcel obtain = Parcel.obtain();
        try {
            byte[] j = lr.j(lv0.s());
            obtain.unmarshall(j, 0, j.length);
            obtain.setDataPosition(0);
            HashMap readHashMap = obtain.readHashMap(bu0.class.getClassLoader());
            Map map = p;
            synchronized (map) {
                map.clear();
                map.putAll(readHashMap);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
        obtain.recycle();
    }

    public static void b() {
        Parcel obtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(lv0.s());
        FileOutputStream fileOutputStream = null;
        try {
            try {
                obtain.writeMap(p);
                fileOutputStream = atomicFile.startWrite();
                lr.l(obtain, fileOutputStream);
                atomicFile.finishWrite(fileOutputStream);
            } catch (Exception e) {
                e.printStackTrace();
                atomicFile.failWrite(fileOutputStream);
            }
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "SharedUserSetting{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.m + "/" + this.n + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.m);
        parcel.writeInt(this.n);
        parcel.writeInt(this.o);
    }

    public bu0(Parcel parcel) {
        this.m = parcel.readString();
        this.n = parcel.readInt();
    }
}
