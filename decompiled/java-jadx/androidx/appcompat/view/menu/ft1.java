package androidx.appcompat.view.menu;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import androidx.appcompat.view.menu.ir0;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ft1 extends cp1 {
    public final dt1 c;
    public boolean d;

    public ft1(cx1 cx1Var) {
        super(cx1Var);
        this.c = new dt1(this, a(), "google_app_measurement_local.db");
    }

    public static long B(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            if (!cursor.moveToFirst()) {
                cursor.close();
                return -1L;
            }
            long j = cursor.getLong(0);
            cursor.close();
            return j;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private final boolean L() {
        return a().getDatabasePath("google_app_measurement_local.db").exists();
    }

    @Override // androidx.appcompat.view.menu.cp1
    public final boolean A() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x020c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x020c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x020c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0219  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List C(int i) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase2;
        SQLiteDatabase sQLiteDatabase3;
        long j;
        String str;
        String[] strArr;
        Parcel obtain;
        v92 v92Var;
        if1 if1Var;
        n();
        ?? r3 = 0;
        if (this.d) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!L()) {
            return arrayList;
        }
        int i2 = 5;
        int i3 = 0;
        for (int i4 = 5; i3 < i4; i4 = 5) {
            try {
                sQLiteDatabase = K();
                try {
                    if (sQLiteDatabase == null) {
                        this.d = true;
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.close();
                        }
                        return r3;
                    }
                    try {
                        sQLiteDatabase.beginTransaction();
                        long B = B(sQLiteDatabase);
                        j = -1;
                        if (B != -1) {
                            try {
                                str = "rowid<?";
                                strArr = new String[]{String.valueOf(B)};
                            } catch (SQLiteFullException e) {
                                e = e;
                                cursor = r3;
                                l().G().b("Error reading entries from local database", e);
                                this.d = true;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                i3++;
                                r3 = 0;
                            } catch (SQLiteException e2) {
                                e = e2;
                                cursor = r3;
                                if (sQLiteDatabase != null) {
                                    try {
                                        if (sQLiteDatabase.inTransaction()) {
                                            sQLiteDatabase.endTransaction();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        r3 = cursor;
                                        if (r3 != 0) {
                                            r3.close();
                                        }
                                        if (sQLiteDatabase != null) {
                                            sQLiteDatabase.close();
                                        }
                                        throw th;
                                    }
                                }
                                l().G().b("Error reading entries from local database", e);
                                this.d = true;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                i3++;
                                r3 = 0;
                            } catch (Throwable th2) {
                                th = th2;
                                if (r3 != 0) {
                                }
                                if (sQLiteDatabase != null) {
                                }
                                throw th;
                            }
                        } else {
                            str = r3;
                            strArr = str;
                        }
                        sQLiteDatabase3 = sQLiteDatabase;
                    } catch (SQLiteFullException e3) {
                        e = e3;
                    } catch (SQLiteException e4) {
                        e = e4;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    try {
                        cursor = sQLiteDatabase.query("messages", new String[]{"rowid", "type", "entry"}, str, strArr, null, null, "rowid asc", Integer.toString(100));
                        while (cursor.moveToNext()) {
                            try {
                                j = cursor.getLong(0);
                                int i5 = cursor.getInt(1);
                                byte[] blob = cursor.getBlob(2);
                                if (i5 == 0) {
                                    obtain = Parcel.obtain();
                                    try {
                                        try {
                                            obtain.unmarshall(blob, 0, blob.length);
                                            obtain.setDataPosition(0);
                                            oi1 createFromParcel = oi1.CREATOR.createFromParcel(obtain);
                                            if (createFromParcel != null) {
                                                arrayList.add(createFromParcel);
                                            }
                                        } catch (ir0.a unused) {
                                            l().G().a("Failed to load event from local database");
                                            obtain.recycle();
                                        }
                                    } finally {
                                    }
                                } else if (i5 == 1) {
                                    obtain = Parcel.obtain();
                                    try {
                                        try {
                                            obtain.unmarshall(blob, 0, blob.length);
                                            obtain.setDataPosition(0);
                                            v92Var = v92.CREATOR.createFromParcel(obtain);
                                        } catch (ir0.a unused2) {
                                            l().G().a("Failed to load user property from local database");
                                            obtain.recycle();
                                            v92Var = null;
                                        }
                                        if (v92Var != null) {
                                            arrayList.add(v92Var);
                                        }
                                    } finally {
                                    }
                                } else if (i5 == 2) {
                                    obtain = Parcel.obtain();
                                    try {
                                        try {
                                            obtain.unmarshall(blob, 0, blob.length);
                                            obtain.setDataPosition(0);
                                            if1Var = if1.CREATOR.createFromParcel(obtain);
                                        } finally {
                                        }
                                    } catch (ir0.a unused3) {
                                        l().G().a("Failed to load conditional user property from local database");
                                        obtain.recycle();
                                        if1Var = null;
                                    }
                                    if (if1Var != null) {
                                        arrayList.add(if1Var);
                                    }
                                } else if (i5 == 3) {
                                    l().L().a("Skipping app launch break");
                                } else {
                                    l().G().a("Unknown record type in local database");
                                }
                            } catch (SQLiteDatabaseLockedException unused4) {
                                sQLiteDatabase2 = sQLiteDatabase3;
                                SystemClock.sleep(i2);
                                i2 += 20;
                                if (cursor != null) {
                                }
                                if (sQLiteDatabase2 == null) {
                                }
                                i3++;
                                r3 = 0;
                            } catch (SQLiteFullException e5) {
                                e = e5;
                                sQLiteDatabase = sQLiteDatabase3;
                                l().G().b("Error reading entries from local database", e);
                                this.d = true;
                                if (cursor != null) {
                                }
                                if (sQLiteDatabase != null) {
                                }
                                i3++;
                                r3 = 0;
                            } catch (SQLiteException e6) {
                                e = e6;
                                sQLiteDatabase = sQLiteDatabase3;
                                if (sQLiteDatabase != null) {
                                }
                                l().G().b("Error reading entries from local database", e);
                                this.d = true;
                                if (cursor != null) {
                                }
                                if (sQLiteDatabase != null) {
                                }
                                i3++;
                                r3 = 0;
                            } catch (Throwable th4) {
                                th = th4;
                                sQLiteDatabase = sQLiteDatabase3;
                                r3 = cursor;
                                if (r3 != 0) {
                                }
                                if (sQLiteDatabase != null) {
                                }
                                throw th;
                            }
                        }
                        if (sQLiteDatabase3.delete("messages", "rowid <= ?", new String[]{Long.toString(j)}) < arrayList.size()) {
                            l().G().a("Fewer entries removed from local database than expected");
                        }
                        sQLiteDatabase3.setTransactionSuccessful();
                        sQLiteDatabase3.endTransaction();
                        cursor.close();
                        sQLiteDatabase3.close();
                        return arrayList;
                    } catch (SQLiteDatabaseLockedException unused5) {
                        sQLiteDatabase2 = sQLiteDatabase3;
                        cursor = null;
                        SystemClock.sleep(i2);
                        i2 += 20;
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (sQLiteDatabase2 == null) {
                            sQLiteDatabase2.close();
                        }
                        i3++;
                        r3 = 0;
                    } catch (SQLiteFullException e7) {
                        e = e7;
                        sQLiteDatabase = sQLiteDatabase3;
                        cursor = null;
                        l().G().b("Error reading entries from local database", e);
                        this.d = true;
                        if (cursor != null) {
                        }
                        if (sQLiteDatabase != null) {
                        }
                        i3++;
                        r3 = 0;
                    } catch (SQLiteException e8) {
                        e = e8;
                        sQLiteDatabase = sQLiteDatabase3;
                        cursor = null;
                        if (sQLiteDatabase != null) {
                        }
                        l().G().b("Error reading entries from local database", e);
                        this.d = true;
                        if (cursor != null) {
                        }
                        if (sQLiteDatabase != null) {
                        }
                        i3++;
                        r3 = 0;
                    } catch (Throwable th5) {
                        th = th5;
                        sQLiteDatabase = sQLiteDatabase3;
                        r3 = 0;
                        if (r3 != 0) {
                        }
                        if (sQLiteDatabase != null) {
                        }
                        throw th;
                    }
                } catch (SQLiteDatabaseLockedException unused6) {
                    sQLiteDatabase3 = sQLiteDatabase;
                }
            } catch (SQLiteDatabaseLockedException unused7) {
                cursor = null;
                sQLiteDatabase2 = null;
            } catch (SQLiteFullException e9) {
                e = e9;
                cursor = null;
                sQLiteDatabase = null;
            } catch (SQLiteException e10) {
                e = e10;
                cursor = null;
                sQLiteDatabase = null;
            } catch (Throwable th6) {
                th = th6;
                r3 = 0;
                sQLiteDatabase = null;
            }
        }
        l().L().a("Failed to read events from database in reasonable time");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006b A[Catch: all -> 0x0056, SQLiteException -> 0x005a, SQLiteFullException -> 0x005c, SQLiteDatabaseLockedException -> 0x00bc, TRY_ENTER, TryCatch #6 {SQLiteDatabaseLockedException -> 0x00bc, SQLiteFullException -> 0x005c, SQLiteException -> 0x005a, all -> 0x0056, blocks: (B:74:0x004b, B:76:0x0051, B:17:0x006b, B:19:0x008f, B:20:0x00a9), top: B:73:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b4  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean D(int i, byte[] bArr) {
        SQLiteDatabase sQLiteDatabase;
        ?? r10;
        long j;
        n();
        ?? r2 = 0;
        if (this.d) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(i));
        contentValues.put("entry", bArr);
        int i2 = 0;
        int i3 = 5;
        for (int i4 = 5; i2 < i4; i4 = 5) {
            Cursor cursor = null;
            r7 = null;
            cursor = null;
            Cursor cursor2 = null;
            cursor = null;
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                sQLiteDatabase = K();
                try {
                    if (sQLiteDatabase == null) {
                        this.d = true;
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.close();
                        }
                        return r2;
                    }
                    sQLiteDatabase.beginTransaction();
                    r10 = sQLiteDatabase.rawQuery("select count(1) from messages", null);
                    if (r10 != 0) {
                        try {
                            if (r10.moveToFirst()) {
                                j = r10.getLong(r2);
                                if (j >= 100000) {
                                    l().G().a("Data loss, local db full");
                                    long j2 = 100001 - j;
                                    String[] strArr = new String[1];
                                    strArr[r2] = Long.toString(j2);
                                    long delete = sQLiteDatabase.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", strArr);
                                    if (delete != j2) {
                                        l().G().d("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j2), Long.valueOf(delete), Long.valueOf(j2 - delete));
                                    }
                                }
                                sQLiteDatabase.insertOrThrow("messages", null, contentValues);
                                sQLiteDatabase.setTransactionSuccessful();
                                sQLiteDatabase.endTransaction();
                                if (r10 != 0) {
                                    r10.close();
                                }
                                sQLiteDatabase.close();
                                return true;
                            }
                        } catch (SQLiteDatabaseLockedException unused) {
                            cursor2 = r10;
                            SystemClock.sleep(i3);
                            i3 += 20;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.close();
                            }
                            i2++;
                            r2 = 0;
                        } catch (SQLiteFullException e) {
                            e = e;
                            cursor = r10;
                            try {
                                l().G().b("Error writing entry; local database full", e);
                                this.d = true;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                i2++;
                                r2 = 0;
                            } catch (Throwable th) {
                                th = th;
                                if (cursor != null) {
                                }
                                if (sQLiteDatabase != null) {
                                }
                                throw th;
                            }
                        } catch (SQLiteException e2) {
                            e = e2;
                            sQLiteDatabase2 = sQLiteDatabase;
                            r10 = r10;
                            if (sQLiteDatabase2 != null) {
                                try {
                                    if (sQLiteDatabase2.inTransaction()) {
                                        sQLiteDatabase2.endTransaction();
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    cursor = r10;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (sQLiteDatabase != null) {
                                        sQLiteDatabase.close();
                                    }
                                    throw th;
                                }
                            }
                            l().G().b("Error writing entry to local database", e);
                            this.d = true;
                            if (r10 != 0) {
                                r10.close();
                            }
                            if (sQLiteDatabase2 != null) {
                                sQLiteDatabase2.close();
                            }
                            i2++;
                            r2 = 0;
                        } catch (Throwable th3) {
                            th = th3;
                            cursor = r10;
                            if (cursor != null) {
                            }
                            if (sQLiteDatabase != null) {
                            }
                            throw th;
                        }
                    }
                    j = 0;
                    if (j >= 100000) {
                    }
                    sQLiteDatabase.insertOrThrow("messages", null, contentValues);
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (r10 != 0) {
                    }
                    sQLiteDatabase.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused2) {
                } catch (SQLiteFullException e3) {
                    e = e3;
                } catch (SQLiteException e4) {
                    e = e4;
                    r10 = 0;
                }
            } catch (SQLiteDatabaseLockedException unused3) {
                sQLiteDatabase = null;
            } catch (SQLiteFullException e5) {
                e = e5;
                sQLiteDatabase = null;
            } catch (SQLiteException e6) {
                e = e6;
                r10 = 0;
            } catch (Throwable th4) {
                th = th4;
                sQLiteDatabase = null;
                if (cursor != null) {
                }
                if (sQLiteDatabase != null) {
                }
                throw th;
            }
        }
        l().K().a("Failed to write entry to local database");
        return false;
    }

    public final boolean E(if1 if1Var) {
        j();
        byte[] p0 = x92.p0(if1Var);
        if (p0.length <= 131072) {
            return D(2, p0);
        }
        l().I().a("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean F(oi1 oi1Var) {
        Parcel obtain = Parcel.obtain();
        oi1Var.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return D(0, marshall);
        }
        l().I().a("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean G(v92 v92Var) {
        Parcel obtain = Parcel.obtain();
        v92Var.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return D(1, marshall);
        }
        l().I().a("User property too long for local database. Sending directly to service");
        return false;
    }

    public final void H() {
        int delete;
        n();
        try {
            SQLiteDatabase K = K();
            if (K == null || (delete = K.delete("messages", null, null)) <= 0) {
                return;
            }
            l().K().b("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            l().G().b("Error resetting local analytics data. error", e);
        }
    }

    public final boolean I() {
        return D(3, new byte[0]);
    }

    public final boolean J() {
        n();
        if (this.d || !L()) {
            return false;
        }
        int i = 5;
        for (int i2 = 0; i2 < 5; i2++) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                try {
                    SQLiteDatabase K = K();
                    if (K == null) {
                        this.d = true;
                        if (K != null) {
                            K.close();
                        }
                        return false;
                    }
                    K.beginTransaction();
                    K.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    K.setTransactionSuccessful();
                    K.endTransaction();
                    K.close();
                    return true;
                } catch (SQLiteFullException e) {
                    l().G().b("Error deleting app launch break from local database", e);
                    this.d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            } catch (SQLiteDatabaseLockedException unused) {
                SystemClock.sleep(i);
                i += 20;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            } catch (SQLiteException e2) {
                if (0 != 0) {
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                }
                l().G().b("Error deleting app launch break from local database", e2);
                this.d = true;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            }
        }
        l().L().a("Error deleting app launch break from local database in reasonable time");
        return false;
    }

    public final SQLiteDatabase K() {
        if (this.d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.d = true;
        return null;
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ mf1 d() {
        return super.d();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ qf1 e() {
        return super.e();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ ci1 f() {
        return super.f();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ mt1 g() {
        return super.g();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ jw1 h() {
        return super.h();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ tu1 i() {
        return super.i();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ x92 j() {
        return super.j();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void k() {
        super.k();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ pt1 l() {
        return super.l();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void m() {
        super.m();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void n() {
        super.n();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ oh1 o() {
        return super.o();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ zs1 p() {
        return super.p();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ ft1 q() {
        return super.q();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ d02 r() {
        return super.r();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ r32 s() {
        return super.s();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ h42 t() {
        return super.t();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ y62 u() {
        return super.u();
    }
}
