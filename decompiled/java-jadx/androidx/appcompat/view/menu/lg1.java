package androidx.appcompat.view.menu;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import androidx.appcompat.view.menu.ks1;
import androidx.appcompat.view.menu.oq1;
import androidx.appcompat.view.menu.pq1;
import androidx.appcompat.view.menu.ps1;
import androidx.appcompat.view.menu.q02;
import androidx.appcompat.view.menu.qq1;
import androidx.appcompat.view.menu.rs1;
import androidx.appcompat.view.menu.sq1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class lg1 extends m82 {
    public static final String[] f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    public static final String[] g = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    public static final String[] h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;"};
    public static final String[] i = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    public static final String[] j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    public static final String[] k = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] l = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] m = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    public static final String[] n = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;"};
    public static final String[] o = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};
    public final xg1 d;
    public final a82 e;

    public lg1(o82 o82Var) {
        super(o82Var);
        this.e = new a82(b());
        this.d = new xg1(this, a(), "google_app_measurement.db");
    }

    public static void T(ContentValues contentValues, String str, Object obj) {
        mj0.e(str);
        mj0.i(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put(str, (Double) obj);
        }
    }

    public final long A() {
        return G("select max(timestamp) from raw_events", null, 0L);
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x002d: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:58:0x002d */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bundle A0(String str) {
        Cursor cursor;
        Cursor cursor2;
        n();
        u();
        Cursor cursor3 = null;
        try {
            try {
                cursor = B().rawQuery("select parameters from default_event_params where app_id=?", new String[]{str});
                try {
                    if (!cursor.moveToFirst()) {
                        l().K().a("Default event parameters not found");
                        cursor.close();
                        return null;
                    }
                    try {
                        ks1 ks1Var = (ks1) ((q02) ((ks1.a) i92.G(ks1.Z(), cursor.getBlob(0))).j());
                        o();
                        List<ms1> c0 = ks1Var.c0();
                        Bundle bundle = new Bundle();
                        for (ms1 ms1Var : c0) {
                            String c02 = ms1Var.c0();
                            if (ms1Var.f0()) {
                                bundle.putDouble(c02, ms1Var.G());
                            } else if (ms1Var.g0()) {
                                bundle.putFloat(c02, ms1Var.R());
                            } else if (ms1Var.j0()) {
                                bundle.putString(c02, ms1Var.d0());
                            } else if (ms1Var.h0()) {
                                bundle.putLong(c02, ms1Var.X());
                            }
                        }
                        cursor.close();
                        return bundle;
                    } catch (IOException e) {
                        l().G().c("Failed to retrieve default event parameters. appId", pt1.v(str), e);
                        cursor.close();
                        return null;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    l().G().b("Error selecting default event parameters", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor3 != null) {
            }
            throw th;
        }
    }

    public final SQLiteDatabase B() {
        n();
        try {
            return this.d.getWritableDatabase();
        } catch (SQLiteException e) {
            l().L().b("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final if1 B0(String str, String str2) {
        Cursor cursor;
        mj0.e(str);
        mj0.e(str2);
        n();
        u();
        Cursor cursor2 = null;
        try {
            cursor = B().query("conditional_properties", new String[]{"origin", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return null;
                }
                String string = cursor.getString(0);
                if (string == null) {
                    string = "";
                }
                String str3 = string;
                try {
                    try {
                        Object M = M(cursor, 1);
                        boolean z = cursor.getInt(2) != 0;
                        String string2 = cursor.getString(3);
                        long j2 = cursor.getLong(4);
                        i92 o2 = o();
                        byte[] blob = cursor.getBlob(5);
                        Parcelable.Creator<oi1> creator = oi1.CREATOR;
                        if1 if1Var = new if1(str, str3, new v92(str2, cursor.getLong(8), M, str3), cursor.getLong(6), z, string2, (oi1) o2.C(blob, creator), j2, (oi1) o().C(cursor.getBlob(7), creator), cursor.getLong(9), (oi1) o().C(cursor.getBlob(10), creator));
                        if (cursor.moveToNext()) {
                            l().G().c("Got multiple records for conditional property, expected one", pt1.v(str), g().g(str2));
                        }
                        cursor.close();
                        return if1Var;
                    } catch (SQLiteException e) {
                        e = e;
                        l().G().d("Error querying conditional property", pt1.v(str), g().g(str2), e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String C() {
        Throwable th;
        Cursor cursor;
        ?? B = B();
        try {
            try {
                cursor = B.rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    String string = cursor.getString(0);
                    cursor.close();
                    return string;
                } catch (SQLiteException e) {
                    e = e;
                    l().G().b("Database error getting next bundle app id", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (B != 0) {
                    B.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            B = 0;
            if (B != 0) {
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final gi1 C0(String str, String str2) {
        Cursor cursor;
        Boolean bool;
        mj0.e(str);
        mj0.e(str2);
        n();
        u();
        SQLiteCursor sQLiteCursor = 0;
        try {
            try {
                cursor = B().query("events", (String[]) new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling", "current_session_count")).toArray(new String[0]), "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    long j2 = cursor.getLong(0);
                    long j3 = cursor.getLong(1);
                    long j4 = cursor.getLong(2);
                    long j5 = cursor.isNull(3) ? 0L : cursor.getLong(3);
                    Long valueOf = cursor.isNull(4) ? null : Long.valueOf(cursor.getLong(4));
                    Long valueOf2 = cursor.isNull(5) ? null : Long.valueOf(cursor.getLong(5));
                    Long valueOf3 = cursor.isNull(6) ? null : Long.valueOf(cursor.getLong(6));
                    if (cursor.isNull(7)) {
                        bool = null;
                    } else {
                        bool = Boolean.valueOf(cursor.getLong(7) == 1);
                    }
                    gi1 gi1Var = new gi1(str, str2, j2, j3, cursor.isNull(8) ? 0L : cursor.getLong(8), j4, j5, valueOf, valueOf2, valueOf3, bool);
                    if (cursor.moveToNext()) {
                        l().G().b("Got multiple records for event aggregates, expected one. appId", pt1.v(str));
                    }
                    cursor.close();
                    return gi1Var;
                } catch (SQLiteException e) {
                    e = e;
                    l().G().d("Error querying events. appId", pt1.v(str), g().c(str2), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                sQLiteCursor = "current_bundle_count";
                if (sQLiteCursor != 0) {
                    sQLiteCursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (sQLiteCursor != 0) {
            }
            throw th;
        }
    }

    public final int D(String str, String str2) {
        mj0.e(str);
        mj0.e(str2);
        n();
        u();
        try {
            return B().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            l().G().d("Error deleting conditional property", pt1.v(str), g().g(str2), e);
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0229 A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0241 A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0268 A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02a0 A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02c4 A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02ea A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0300 A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0317 A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TRY_LEAVE, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x021a A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01c5 A[Catch: all -> 0x0178, SQLiteException -> 0x017c, TryCatch #2 {all -> 0x0178, blocks: (B:14:0x0112, B:16:0x016f, B:20:0x0180, B:23:0x01ca, B:25:0x01f9, B:29:0x0203, B:32:0x021e, B:34:0x0229, B:35:0x023b, B:37:0x0241, B:39:0x024d, B:41:0x0259, B:42:0x0262, B:44:0x0268, B:46:0x0274, B:48:0x027c, B:51:0x0285, B:53:0x0288, B:55:0x02a0, B:57:0x02ac, B:58:0x02be, B:60:0x02c4, B:62:0x02d0, B:64:0x02d8, B:67:0x02e1, B:69:0x02e4, B:71:0x02ea, B:73:0x02f6, B:76:0x030b, B:77:0x0300, B:80:0x0307, B:81:0x030e, B:83:0x0317, B:87:0x021a, B:89:0x01c5, B:93:0x033d), top: B:2:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final rw1 D0(String str) {
        Cursor cursor;
        boolean z;
        boolean z2;
        Boolean valueOf;
        mj0.e(str);
        n();
        u();
        Cursor cursor2 = null;
        try {
            try {
                cursor = B().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id", "session_stitching_token", "sgtm_upload_enabled", "target_os_version", "session_stitching_token_hash", "ad_services_version", "unmatched_first_open_without_ad_id", "npa_metadata_value", "attribution_eligibility_status"}, "app_id=?", new String[]{str}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
            e = e;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        try {
            if (!cursor.moveToFirst()) {
                cursor.close();
                return null;
            }
            try {
                rw1 rw1Var = new rw1(this.b.i0(), str);
                rw1Var.x(cursor.getString(0));
                rw1Var.M(cursor.getString(1));
                rw1Var.S(cursor.getString(2));
                rw1Var.h0(cursor.getLong(3));
                rw1Var.j0(cursor.getLong(4));
                rw1Var.f0(cursor.getLong(5));
                rw1Var.F(cursor.getString(6));
                rw1Var.B(cursor.getString(7));
                rw1Var.d0(cursor.getLong(8));
                rw1Var.X(cursor.getLong(9));
                if (!cursor.isNull(10) && cursor.getInt(10) == 0) {
                    z = false;
                    rw1Var.y(z);
                    rw1Var.U(cursor.getLong(11));
                    rw1Var.O(cursor.getLong(12));
                    rw1Var.L(cursor.getLong(13));
                    rw1Var.E(cursor.getLong(14));
                    rw1Var.A(cursor.getLong(15));
                    rw1Var.b0(cursor.getLong(16));
                    rw1Var.c(!cursor.isNull(17) ? -2147483648L : cursor.getInt(17));
                    rw1Var.J(cursor.getString(18));
                    rw1Var.I(cursor.getLong(19));
                    rw1Var.R(cursor.getLong(20));
                    rw1Var.P(cursor.getString(21));
                    if (!cursor.isNull(23) && cursor.getInt(23) == 0) {
                        z2 = false;
                        rw1Var.g(z2);
                        rw1Var.e(cursor.getString(24));
                        rw1Var.Z(!cursor.isNull(25) ? 0L : cursor.getLong(25));
                        if (!cursor.isNull(26)) {
                            rw1Var.f(Arrays.asList(cursor.getString(26).split(",", -1)));
                        }
                        if (ed2.a() && (e().B(str, si1.y0) || e().s(si1.w0))) {
                            rw1Var.V(cursor.getString(28));
                        }
                        if (wd2.a() && e().s(si1.A0)) {
                            rw1Var.C(cursor.isNull(29) && cursor.getInt(29) != 0);
                        }
                        rw1Var.n0(cursor.getLong(30));
                        rw1Var.l0(cursor.getLong(31));
                        if (sc2.a() && e().B(str, si1.L0)) {
                            rw1Var.b(cursor.getInt(32));
                            rw1Var.w(cursor.getLong(35));
                        }
                        if (ia2.a() && e().B(str, si1.Y0)) {
                            rw1Var.G(cursor.isNull(33) && cursor.getInt(33) != 0);
                        }
                        if (na2.a() && e().B(str, si1.T0)) {
                            if (cursor.isNull(34)) {
                                valueOf = Boolean.valueOf(cursor.getInt(34) != 0);
                            } else {
                                valueOf = null;
                            }
                            rw1Var.d(valueOf);
                        }
                        rw1Var.o();
                        if (cursor.moveToNext()) {
                            l().G().b("Got multiple records for app, expected one. appId", pt1.v(str));
                        }
                        cursor.close();
                        return rw1Var;
                    }
                    z2 = true;
                    rw1Var.g(z2);
                    rw1Var.e(cursor.getString(24));
                    rw1Var.Z(!cursor.isNull(25) ? 0L : cursor.getLong(25));
                    if (!cursor.isNull(26)) {
                    }
                    if (ed2.a()) {
                        rw1Var.V(cursor.getString(28));
                    }
                    if (wd2.a()) {
                        rw1Var.C(cursor.isNull(29) && cursor.getInt(29) != 0);
                    }
                    rw1Var.n0(cursor.getLong(30));
                    rw1Var.l0(cursor.getLong(31));
                    if (sc2.a()) {
                        rw1Var.b(cursor.getInt(32));
                        rw1Var.w(cursor.getLong(35));
                    }
                    if (ia2.a()) {
                        rw1Var.G(cursor.isNull(33) && cursor.getInt(33) != 0);
                    }
                    if (na2.a()) {
                        if (cursor.isNull(34)) {
                        }
                        rw1Var.d(valueOf);
                    }
                    rw1Var.o();
                    if (cursor.moveToNext()) {
                    }
                    cursor.close();
                    return rw1Var;
                }
                z = true;
                rw1Var.y(z);
                rw1Var.U(cursor.getLong(11));
                rw1Var.O(cursor.getLong(12));
                rw1Var.L(cursor.getLong(13));
                rw1Var.E(cursor.getLong(14));
                rw1Var.A(cursor.getLong(15));
                rw1Var.b0(cursor.getLong(16));
                rw1Var.c(!cursor.isNull(17) ? -2147483648L : cursor.getInt(17));
                rw1Var.J(cursor.getString(18));
                rw1Var.I(cursor.getLong(19));
                rw1Var.R(cursor.getLong(20));
                rw1Var.P(cursor.getString(21));
                if (!cursor.isNull(23)) {
                    z2 = false;
                    rw1Var.g(z2);
                    rw1Var.e(cursor.getString(24));
                    rw1Var.Z(!cursor.isNull(25) ? 0L : cursor.getLong(25));
                    if (!cursor.isNull(26)) {
                    }
                    if (ed2.a()) {
                    }
                    if (wd2.a()) {
                    }
                    rw1Var.n0(cursor.getLong(30));
                    rw1Var.l0(cursor.getLong(31));
                    if (sc2.a()) {
                    }
                    if (ia2.a()) {
                    }
                    if (na2.a()) {
                    }
                    rw1Var.o();
                    if (cursor.moveToNext()) {
                    }
                    cursor.close();
                    return rw1Var;
                }
                z2 = true;
                rw1Var.g(z2);
                rw1Var.e(cursor.getString(24));
                rw1Var.Z(!cursor.isNull(25) ? 0L : cursor.getLong(25));
                if (!cursor.isNull(26)) {
                }
                if (ed2.a()) {
                }
                if (wd2.a()) {
                }
                rw1Var.n0(cursor.getLong(30));
                rw1Var.l0(cursor.getLong(31));
                if (sc2.a()) {
                }
                if (ia2.a()) {
                }
                if (na2.a()) {
                }
                rw1Var.o();
                if (cursor.moveToNext()) {
                }
                cursor.close();
                return rw1Var;
            } catch (SQLiteException e2) {
                e = e2;
                l().G().c("Error querying app. appId", pt1.v(str), e);
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
        } catch (SQLiteException e3) {
            e = e3;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public final long E(ps1 ps1Var) {
        n();
        u();
        mj0.i(ps1Var);
        mj0.e(ps1Var.D3());
        byte[] h2 = ps1Var.h();
        long A = o().A(h2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", ps1Var.D3());
        contentValues.put("metadata_fingerprint", Long.valueOf(A));
        contentValues.put("metadata", h2);
        try {
            B().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return A;
        } catch (SQLiteException e) {
            l().G().c("Error storing raw event metadata. appId", pt1.v(ps1Var.D3()), e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final pg1 E0(String str) {
        Cursor cursor;
        mj0.e(str);
        n();
        u();
        Cursor cursor2 = null;
        try {
            cursor = B().query("apps", new String[]{"remote_config", "config_last_modified_time", "e_tag"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    byte[] blob = cursor.getBlob(0);
                    String string = cursor.getString(1);
                    String string2 = cursor.getString(2);
                    if (cursor.moveToNext()) {
                        l().G().b("Got multiple records for app config, expected one. appId", pt1.v(str));
                    }
                    if (blob == null) {
                        cursor.close();
                        return null;
                    }
                    pg1 pg1Var = new pg1(blob, string, string2);
                    cursor.close();
                    return pg1Var;
                } catch (SQLiteException e) {
                    e = e;
                    l().G().c("Error querying remote config. appId", pt1.v(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public final long F(String str) {
        mj0.e(str);
        n();
        u();
        try {
            return B().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, e().u(str, si1.r))))});
        } catch (SQLiteException e) {
            l().G().c("Error deleting over the limit events. appId", pt1.v(str), e);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final z92 F0(String str, String str2) {
        Cursor cursor;
        mj0.e(str);
        mj0.e(str2);
        n();
        u();
        Cursor cursor2 = null;
        try {
            cursor = B().query("user_attributes", new String[]{"set_timestamp", "value", "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    long j2 = cursor.getLong(0);
                    Object M = M(cursor, 1);
                    if (M == null) {
                        cursor.close();
                        return null;
                    }
                    z92 z92Var = new z92(str, cursor.getString(2), str2, j2, M);
                    if (cursor.moveToNext()) {
                        l().G().b("Got multiple records for user property, expected one. appId", pt1.v(str));
                    }
                    cursor.close();
                    return z92Var;
                } catch (SQLiteException e) {
                    e = e;
                    l().G().d("Error querying user property. appId", pt1.v(str), g().g(str2), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public final long G(String str, String[] strArr, long j2) {
        Cursor cursor = null;
        try {
            try {
                cursor = B().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return j2;
                }
                long j3 = cursor.getLong(0);
                cursor.close();
                return j3;
            } catch (SQLiteException e) {
                l().G().c("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final fh1 G0(String str) {
        if (!na2.a() || !e().s(si1.T0)) {
            return fh1.f;
        }
        mj0.i(str);
        n();
        u();
        return fh1.c(P("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0036: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:29:0x0036 */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Pair H(String str, Long l2) {
        Cursor cursor;
        Cursor cursor2;
        n();
        u();
        Cursor cursor3 = null;
        try {
            try {
                cursor = B().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, String.valueOf(l2)});
                try {
                    if (!cursor.moveToFirst()) {
                        l().K().a("Main event not found");
                        cursor.close();
                        return null;
                    }
                    try {
                        Pair create = Pair.create((ks1) ((q02) ((ks1.a) i92.G(ks1.Z(), cursor.getBlob(0))).j()), Long.valueOf(cursor.getLong(1)));
                        cursor.close();
                        return create;
                    } catch (IOException e) {
                        l().G().d("Failed to merge main event. appId, eventId", pt1.v(str), l2, e);
                        cursor.close();
                        return null;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    l().G().b("Error selecting main event", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor3 != null) {
            }
            throw th;
        }
    }

    public final Map H0(String str, String str2) {
        u();
        n();
        mj0.e(str);
        mj0.e(str2);
        o4 o4Var = new o4();
        Cursor cursor = null;
        try {
            try {
                Cursor query = B().query("event_filters", new String[]{"audience_id", "data"}, "app_id=? AND event_name=?", new String[]{str, str2}, null, null, null);
                if (!query.moveToFirst()) {
                    Map emptyMap = Collections.emptyMap();
                    query.close();
                    return emptyMap;
                }
                do {
                    try {
                        pq1 pq1Var = (pq1) ((q02) ((pq1.a) i92.G(pq1.M(), query.getBlob(1))).j());
                        int i2 = query.getInt(0);
                        List list = (List) o4Var.get(Integer.valueOf(i2));
                        if (list == null) {
                            list = new ArrayList();
                            o4Var.put(Integer.valueOf(i2), list);
                        }
                        list.add(pq1Var);
                    } catch (IOException e) {
                        l().G().c("Failed to merge filter. appId", pt1.v(str), e);
                    }
                } while (query.moveToNext());
                query.close();
                return o4Var;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            l().G().c("Database error querying filters. appId", pt1.v(str), e2);
            Map emptyMap2 = Collections.emptyMap();
            if (0 != 0) {
                cursor.close();
            }
            return emptyMap2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ng1 I(long j2, String str, long j3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Cursor cursor;
        mj0.e(str);
        n();
        u();
        String[] strArr = {str};
        ng1 ng1Var = new ng1();
        try {
            SQLiteDatabase B = B();
            Cursor query = B.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                if (!query.moveToFirst()) {
                    l().L().b("Not updating daily counts, app is not known. appId", pt1.v(str));
                    query.close();
                    return ng1Var;
                }
                if (query.getLong(0) == j2) {
                    ng1Var.b = query.getLong(1);
                    ng1Var.a = query.getLong(2);
                    ng1Var.c = query.getLong(3);
                    ng1Var.d = query.getLong(4);
                    ng1Var.e = query.getLong(5);
                }
                if (z) {
                    ng1Var.b += j3;
                }
                if (z2) {
                    ng1Var.a += j3;
                }
                if (z3) {
                    ng1Var.c += j3;
                }
                if (z4) {
                    ng1Var.d += j3;
                }
                if (z5) {
                    ng1Var.e += j3;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j2));
                contentValues.put("daily_public_events_count", Long.valueOf(ng1Var.a));
                contentValues.put("daily_events_count", Long.valueOf(ng1Var.b));
                contentValues.put("daily_conversions_count", Long.valueOf(ng1Var.c));
                contentValues.put("daily_error_events_count", Long.valueOf(ng1Var.d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(ng1Var.e));
                B.update("apps", contentValues, "app_id=?", strArr);
                query.close();
                return ng1Var;
            } catch (SQLiteException e) {
                e = e;
                cursor = query;
                try {
                    l().G().c("Error updating daily counts. appId", pt1.v(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return ng1Var;
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = query;
                if (cursor != null) {
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public final lz1 I0(String str) {
        mj0.i(str);
        n();
        u();
        if (!na2.a() || !e().s(si1.T0)) {
            return lz1.e(P("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str}, "G1"));
        }
        lz1 lz1Var = (lz1) N("select consent_state, consent_source from consent_settings where app_id=? limit 1;", new String[]{str}, new rg1() { // from class: androidx.appcompat.view.menu.jg1
            @Override // androidx.appcompat.view.menu.rg1
            public final Object a(Cursor cursor) {
                lz1 f2;
                f2 = lz1.f(cursor.getString(0), cursor.getInt(1));
                return f2;
            }
        });
        return lz1Var == null ? lz1.c : lz1Var;
    }

    public final ng1 J(long j2, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return I(j2, str, 1L, false, false, z3, false, z5);
    }

    public final Map J0(String str, String str2) {
        u();
        n();
        mj0.e(str);
        mj0.e(str2);
        o4 o4Var = new o4();
        Cursor cursor = null;
        try {
            try {
                Cursor query = B().query("property_filters", new String[]{"audience_id", "data"}, "app_id=? AND property_name=?", new String[]{str, str2}, null, null, null);
                if (!query.moveToFirst()) {
                    Map emptyMap = Collections.emptyMap();
                    query.close();
                    return emptyMap;
                }
                do {
                    try {
                        sq1 sq1Var = (sq1) ((q02) ((sq1.a) i92.G(sq1.J(), query.getBlob(1))).j());
                        int i2 = query.getInt(0);
                        List list = (List) o4Var.get(Integer.valueOf(i2));
                        if (list == null) {
                            list = new ArrayList();
                            o4Var.put(Integer.valueOf(i2), list);
                        }
                        list.add(sq1Var);
                    } catch (IOException e) {
                        l().G().c("Failed to merge filter", pt1.v(str), e);
                    }
                } while (query.moveToNext());
                query.close();
                return o4Var;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            l().G().c("Database error querying filters. appId", pt1.v(str), e2);
            Map emptyMap2 = Collections.emptyMap();
            if (0 != 0) {
                cursor.close();
            }
            return emptyMap2;
        }
    }

    public final List K0(String str) {
        mj0.e(str);
        n();
        u();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = B().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", "source"}, "app_id=?", new String[]{str}, null, null, "rowid", null);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return arrayList;
                }
                do {
                    String string = cursor.getString(0);
                    if (string == null) {
                        string = "";
                    }
                    arrayList.add(new y72(string, cursor.getLong(1), cursor.getInt(2)));
                } while (cursor.moveToNext());
                cursor.close();
                return arrayList;
            } catch (SQLiteException e) {
                l().G().c("Error querying trigger uris. appId", pt1.v(str), e);
                List emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final void L0(String str, String str2) {
        mj0.e(str);
        mj0.e(str2);
        n();
        u();
        try {
            B().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            l().G().d("Error deleting user property. appId", pt1.v(str), g().g(str2), e);
        }
    }

    public final Object M(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 0) {
            l().G().a("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i2));
        }
        if (type == 3) {
            return cursor.getString(i2);
        }
        if (type != 4) {
            l().G().b("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        l().G().a("Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List M0(String str) {
        mj0.e(str);
        n();
        u();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = B().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
            if (!cursor.moveToFirst()) {
                cursor.close();
                return arrayList;
            }
            do {
                String string = cursor.getString(0);
                String string2 = cursor.getString(1);
                if (string2 == null) {
                    string2 = "";
                }
                String str2 = string2;
                long j2 = cursor.getLong(2);
                try {
                    try {
                        Object M = M(cursor, 3);
                        if (M == null) {
                            l().G().b("Read invalid user property value, ignoring it. appId", pt1.v(str));
                        } else {
                            arrayList.add(new z92(str, str2, string, j2, M));
                        }
                    } catch (SQLiteException e) {
                        e = e;
                        l().G().c("Error querying user properties. appId", pt1.v(str), e);
                        List emptyList = Collections.emptyList();
                        if (cursor != null) {
                            cursor.close();
                        }
                        return emptyList;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } while (cursor.moveToNext());
            cursor.close();
            return arrayList;
        } catch (SQLiteException e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0046  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object N(String str, String[] strArr, rg1 rg1Var) {
        Cursor cursor;
        ?? r0 = 0;
        try {
            try {
                cursor = B().rawQuery(str, strArr);
                try {
                    if (cursor.moveToFirst()) {
                        Object a = rg1Var.a(cursor);
                        cursor.close();
                        return a;
                    }
                    l().K().a("No data found");
                    cursor.close();
                    return null;
                } catch (SQLiteException e) {
                    e = e;
                    l().G().b("Error querying database.", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                r0 = str;
                if (r0 != 0) {
                    r0.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (r0 != 0) {
            }
            throw th;
        }
    }

    public final Map N0(String str) {
        u();
        n();
        mj0.e(str);
        Cursor cursor = null;
        try {
            try {
                Cursor query = B().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    Map emptyMap = Collections.emptyMap();
                    query.close();
                    return emptyMap;
                }
                o4 o4Var = new o4();
                do {
                    int i2 = query.getInt(0);
                    try {
                        o4Var.put(Integer.valueOf(i2), (rs1) ((q02) ((rs1.a) i92.G(rs1.V(), query.getBlob(1))).j()));
                    } catch (IOException e) {
                        l().G().d("Failed to merge filter results. appId, audienceId, error", pt1.v(str), Integer.valueOf(i2), e);
                    }
                } while (query.moveToNext());
                query.close();
                return o4Var;
            } catch (SQLiteException e2) {
                l().G().c("Database error querying filter results. appId", pt1.v(str), e2);
                Map emptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String O(long j2) {
        Cursor cursor;
        n();
        u();
        Cursor cursor2 = null;
        try {
            try {
                cursor = B().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf(j2)});
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(0);
                        cursor.close();
                        return string;
                    }
                    l().K().a("No expired configs for apps with pending events");
                    cursor.close();
                    return null;
                } catch (SQLiteException e) {
                    e = e;
                    l().G().b("Error selecting expired configs", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = j2;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public final Map O0(String str) {
        mj0.e(str);
        o4 o4Var = new o4();
        Cursor cursor = null;
        try {
            try {
                Cursor query = B().query("event_filters", new String[]{"audience_id", "data"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    Map emptyMap = Collections.emptyMap();
                    query.close();
                    return emptyMap;
                }
                do {
                    try {
                        pq1 pq1Var = (pq1) ((q02) ((pq1.a) i92.G(pq1.M(), query.getBlob(1))).j());
                        if (pq1Var.U()) {
                            int i2 = query.getInt(0);
                            List list = (List) o4Var.get(Integer.valueOf(i2));
                            if (list == null) {
                                list = new ArrayList();
                                o4Var.put(Integer.valueOf(i2), list);
                            }
                            list.add(pq1Var);
                        }
                    } catch (IOException e) {
                        l().G().c("Failed to merge filter. appId", pt1.v(str), e);
                    }
                } while (query.moveToNext());
                query.close();
                return o4Var;
            } catch (SQLiteException e2) {
                l().G().c("Database error querying filters. appId", pt1.v(str), e2);
                Map emptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final String P(String str, String[] strArr, String str2) {
        Cursor cursor = null;
        try {
            try {
                cursor = B().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return str2;
                }
                String string = cursor.getString(0);
                cursor.close();
                return string;
            } catch (SQLiteException e) {
                l().G().c("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final Map P0(String str) {
        u();
        n();
        mj0.e(str);
        o4 o4Var = new o4();
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = B().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str, str});
                if (!rawQuery.moveToFirst()) {
                    Map emptyMap = Collections.emptyMap();
                    rawQuery.close();
                    return emptyMap;
                }
                do {
                    int i2 = rawQuery.getInt(0);
                    List list = (List) o4Var.get(Integer.valueOf(i2));
                    if (list == null) {
                        list = new ArrayList();
                        o4Var.put(Integer.valueOf(i2), list);
                    }
                    list.add(Integer.valueOf(rawQuery.getInt(1)));
                } while (rawQuery.moveToNext());
                rawQuery.close();
                return o4Var;
            } catch (SQLiteException e) {
                l().G().c("Database error querying scoped filters. appId", pt1.v(str), e);
                Map emptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final List Q(String str, int i2, int i3) {
        byte[] i0;
        long j2;
        long j3;
        n();
        u();
        int i4 = 1;
        mj0.a(i2 > 0);
        mj0.a(i3 > 0);
        mj0.e(str);
        Cursor cursor = null;
        try {
            try {
                Cursor query = B().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i2));
                if (!query.moveToFirst()) {
                    List emptyList = Collections.emptyList();
                    query.close();
                    return emptyList;
                }
                ArrayList arrayList = new ArrayList();
                int i5 = 0;
                while (true) {
                    long j4 = query.getLong(0);
                    try {
                        i0 = o().i0(query.getBlob(i4));
                    } catch (IOException e) {
                        l().G().c("Failed to unzip queued bundle. appId", pt1.v(str), e);
                    }
                    if (!arrayList.isEmpty() && i0.length + i5 > i3) {
                        break;
                    }
                    try {
                        ps1.a aVar = (ps1.a) i92.G(ps1.A3(), i0);
                        if (na2.a() && e().s(si1.X0) && !arrayList.isEmpty()) {
                            ps1 ps1Var = (ps1) ((Pair) arrayList.get(0)).first;
                            ps1 ps1Var2 = (ps1) ((q02) aVar.j());
                            if (!ps1Var.f0().equals(ps1Var2.f0()) || !ps1Var.e0().equals(ps1Var2.e0()) || ps1Var.v0() != ps1Var2.v0() || !ps1Var.g0().equals(ps1Var2.g0())) {
                                break;
                            }
                            Iterator it = ps1Var.t0().iterator();
                            while (true) {
                                j2 = -1;
                                if (!it.hasNext()) {
                                    j3 = -1;
                                    break;
                                }
                                ts1 ts1Var = (ts1) it.next();
                                if ("_npa".equals(ts1Var.Z())) {
                                    j3 = ts1Var.U();
                                    break;
                                }
                            }
                            Iterator it2 = ps1Var2.t0().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                }
                                ts1 ts1Var2 = (ts1) it2.next();
                                if ("_npa".equals(ts1Var2.Z())) {
                                    j2 = ts1Var2.U();
                                    break;
                                }
                            }
                            if (j3 != j2) {
                                break;
                            }
                        }
                        if (!query.isNull(2)) {
                            aVar.l0(query.getInt(2));
                        }
                        i5 += i0.length;
                        arrayList.add(Pair.create((ps1) ((q02) aVar.j()), Long.valueOf(j4)));
                    } catch (IOException e2) {
                        l().G().c("Failed to merge queued bundle. appId", pt1.v(str), e2);
                    }
                    if (!query.moveToNext() || i5 > i3) {
                        break;
                    }
                    i4 = 1;
                }
                query.close();
                return arrayList;
            } catch (SQLiteException e3) {
                l().G().c("Error querying bundles. appId", pt1.v(str), e3);
                List emptyList2 = Collections.emptyList();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyList2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final void Q0() {
        u();
        B().beginTransaction();
    }

    public final List R(String str, String str2, String str3) {
        mj0.e(str);
        n();
        u();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3 + "*");
            sb.append(" and name glob ?");
        }
        return S(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final void R0() {
        u();
        B().endTransaction();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008a, code lost:
    
        l().G().b("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x016d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List S(String str, String[] strArr) {
        Cursor cursor;
        n();
        u();
        ArrayList arrayList = new ArrayList();
        try {
            int i2 = 0;
            int i3 = 5;
            Cursor query = B().query("conditional_properties", new String[]{"app_id", "origin", "name", "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, str, strArr, null, null, "rowid", "1001");
            try {
                if (!query.moveToFirst()) {
                    query.close();
                    return arrayList;
                }
                while (true) {
                    if (arrayList.size() >= 1000) {
                        break;
                    }
                    String string = query.getString(i2);
                    String string2 = query.getString(1);
                    String string3 = query.getString(2);
                    Object M = M(query, 3);
                    boolean z = query.getInt(4) != 0 ? 1 : i2;
                    String string4 = query.getString(i3);
                    long j2 = query.getLong(6);
                    i92 o2 = o();
                    byte[] blob = query.getBlob(7);
                    Parcelable.Creator<oi1> creator = oi1.CREATOR;
                    arrayList.add(new if1(string, string2, new v92(string3, query.getLong(10), M, string2), query.getLong(8), z, string4, (oi1) o2.C(blob, creator), j2, (oi1) o().C(query.getBlob(9), creator), query.getLong(11), (oi1) o().C(query.getBlob(12), creator)));
                    if (!query.moveToNext()) {
                        break;
                    }
                    i3 = 5;
                    i2 = 0;
                }
                query.close();
                return arrayList;
            } catch (SQLiteException e) {
                e = e;
                cursor = query;
                try {
                    l().G().b("Error querying conditional user property value", e);
                    List emptyList = Collections.emptyList();
                    if (cursor != null) {
                        cursor.close();
                    }
                    return emptyList;
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = query;
                if (cursor != null) {
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public final void S0() {
        int delete;
        n();
        u();
        if (u0()) {
            long a = s().e.a();
            long b = b().b();
            if (Math.abs(b - a) > ((Long) si1.A.a(null)).longValue()) {
                s().e.b(b);
                n();
                u();
                if (!u0() || (delete = B().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(b().a()), String.valueOf(qf1.M())})) <= 0) {
                    return;
                }
                l().K().b("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
            }
        }
    }

    public final void T0() {
        u();
        B().setTransactionSuccessful();
    }

    public final void U(gi1 gi1Var) {
        mj0.i(gi1Var);
        n();
        u();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", gi1Var.a);
        contentValues.put("name", gi1Var.b);
        contentValues.put("lifetime_count", Long.valueOf(gi1Var.c));
        contentValues.put("current_bundle_count", Long.valueOf(gi1Var.d));
        contentValues.put("last_fire_timestamp", Long.valueOf(gi1Var.f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(gi1Var.g));
        contentValues.put("last_bundled_day", gi1Var.h);
        contentValues.put("last_sampled_complex_event_id", gi1Var.i);
        contentValues.put("last_sampling_rate", gi1Var.j);
        contentValues.put("current_session_count", Long.valueOf(gi1Var.e));
        Boolean bool = gi1Var.k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (B().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                l().G().b("Failed to insert/update event aggregates (got -1). appId", pt1.v(gi1Var.a));
            }
        } catch (SQLiteException e) {
            l().G().c("Error storing event aggregates. appId", pt1.v(gi1Var.a), e);
        }
    }

    public final boolean U0() {
        return x0("select count(1) > 0 from raw_events", null) != 0;
    }

    public final void V(rw1 rw1Var) {
        mj0.i(rw1Var);
        n();
        u();
        String t0 = rw1Var.t0();
        mj0.i(t0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", t0);
        contentValues.put("app_instance_id", rw1Var.u0());
        contentValues.put("gmp_app_id", rw1Var.j());
        contentValues.put("resettable_device_id_hash", rw1Var.l());
        contentValues.put("last_bundle_index", Long.valueOf(rw1Var.k0()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(rw1Var.m0()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(rw1Var.i0()));
        contentValues.put("app_version", rw1Var.h());
        contentValues.put("app_store", rw1Var.v0());
        contentValues.put("gmp_version", Long.valueOf(rw1Var.g0()));
        contentValues.put("dev_cert_hash", Long.valueOf(rw1Var.a0()));
        contentValues.put("measurement_enabled", Boolean.valueOf(rw1Var.r()));
        contentValues.put("day", Long.valueOf(rw1Var.Y()));
        contentValues.put("daily_public_events_count", Long.valueOf(rw1Var.T()));
        contentValues.put("daily_events_count", Long.valueOf(rw1Var.Q()));
        contentValues.put("daily_conversions_count", Long.valueOf(rw1Var.K()));
        contentValues.put("config_fetched_time", Long.valueOf(rw1Var.H()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(rw1Var.e0()));
        contentValues.put("app_version_int", Long.valueOf(rw1Var.z()));
        contentValues.put("firebase_instance_id", rw1Var.i());
        contentValues.put("daily_error_events_count", Long.valueOf(rw1Var.N()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(rw1Var.W()));
        contentValues.put("health_monitor_sample", rw1Var.k());
        contentValues.put("android_id", Long.valueOf(rw1Var.v()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(rw1Var.q()));
        contentValues.put("admob_app_id", rw1Var.r0());
        contentValues.put("dynamite_version", Long.valueOf(rw1Var.c0()));
        contentValues.put("session_stitching_token", rw1Var.m());
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(rw1Var.t()));
        contentValues.put("target_os_version", Long.valueOf(rw1Var.p0()));
        contentValues.put("session_stitching_token_hash", Long.valueOf(rw1Var.o0()));
        if (sc2.a() && e().B(t0, si1.L0)) {
            contentValues.put("ad_services_version", Integer.valueOf(rw1Var.a()));
            contentValues.put("attribution_eligibility_status", Long.valueOf(rw1Var.D()));
        }
        if (ia2.a() && e().B(t0, si1.Y0)) {
            contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(rw1Var.u()));
        }
        List n2 = rw1Var.n();
        if (n2 != null) {
            if (n2.isEmpty()) {
                l().L().b("Safelisted events should not be an empty list. appId", t0);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", n2));
            }
        }
        if (oa2.a() && e().s(si1.u0) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        if (na2.a() && e().B(t0, si1.T0)) {
            contentValues.put("npa_metadata_value", rw1Var.q0());
        }
        try {
            SQLiteDatabase B = B();
            if (B.update("apps", contentValues, "app_id = ?", new String[]{t0}) == 0 && B.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                l().G().b("Failed to insert/update app (got -1). appId", pt1.v(t0));
            }
        } catch (SQLiteException e) {
            l().G().c("Error storing app. appId", pt1.v(t0), e);
        }
    }

    public final boolean V0() {
        return x0("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    public final void W(String str, fh1 fh1Var) {
        if (na2.a() && e().s(si1.T0)) {
            mj0.i(str);
            mj0.i(fh1Var);
            n();
            u();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("dma_consent_settings", fh1Var.i());
            Y("consent_settings", "app_id", contentValues);
        }
    }

    public final boolean W0() {
        return x0("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    public final void X(String str, lz1 lz1Var) {
        mj0.i(str);
        mj0.i(lz1Var);
        n();
        u();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", lz1Var.v());
        if (na2.a() && e().s(si1.T0)) {
            contentValues.put("consent_source", Integer.valueOf(lz1Var.b()));
            Y("consent_settings", "app_id", contentValues);
            return;
        }
        try {
            if (B().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                l().G().b("Failed to insert/update consent setting (got -1). appId", pt1.v(str));
            }
        } catch (SQLiteException e) {
            l().G().c("Error storing consent setting. appId, error", pt1.v(str), e);
        }
    }

    public final void Y(String str, String str2, ContentValues contentValues) {
        try {
            SQLiteDatabase B = B();
            if (contentValues.getAsString(str2) == null) {
                l().H().b("Value of the primary key is not set.", pt1.v(str2));
                return;
            }
            if (B.update(str, contentValues, str2 + " = ?", new String[]{r1}) == 0 && B.insertWithOnConflict(str, null, contentValues, 5) == -1) {
                l().G().c("Failed to insert/update table (got -1). key", pt1.v(str), pt1.v(str2));
            }
        } catch (SQLiteException e) {
            l().G().d("Error storing into table. key", pt1.v(str), pt1.v(str2), e);
        }
    }

    public final void Z(String str, List list) {
        boolean z;
        boolean z2;
        mj0.i(list);
        for (int i2 = 0; i2 < list.size(); i2++) {
            oq1.a aVar = (oq1.a) ((oq1) list.get(i2)).x();
            if (aVar.r() != 0) {
                for (int i3 = 0; i3 < aVar.r(); i3++) {
                    pq1.a aVar2 = (pq1.a) aVar.u(i3).x();
                    pq1.a aVar3 = (pq1.a) ((q02.b) aVar2.clone());
                    String b = nz1.b(aVar2.v());
                    if (b != null) {
                        aVar3.t(b);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    for (int i4 = 0; i4 < aVar2.r(); i4++) {
                        qq1 u = aVar2.u(i4);
                        String a = rz1.a(u.M());
                        if (a != null) {
                            aVar3.s(i4, (qq1) ((q02) ((qq1.a) u.x()).r(a).j()));
                            z2 = true;
                        }
                    }
                    if (z2) {
                        oq1.a s = aVar.s(i3, aVar3);
                        list.set(i2, (oq1) ((q02) s.j()));
                        aVar = s;
                    }
                }
            }
            if (aVar.v() != 0) {
                for (int i5 = 0; i5 < aVar.v(); i5++) {
                    sq1 w = aVar.w(i5);
                    String a2 = oz1.a(w.L());
                    if (a2 != null) {
                        aVar = aVar.t(i5, ((sq1.a) w.x()).r(a2));
                        list.set(i2, (oq1) ((q02) aVar.j()));
                    }
                }
            }
        }
        u();
        n();
        mj0.e(str);
        mj0.i(list);
        SQLiteDatabase B = B();
        B.beginTransaction();
        try {
            u();
            n();
            mj0.e(str);
            SQLiteDatabase B2 = B();
            B2.delete("property_filters", "app_id=?", new String[]{str});
            B2.delete("event_filters", "app_id=?", new String[]{str});
            Iterator it = list.iterator();
            while (it.hasNext()) {
                oq1 oq1Var = (oq1) it.next();
                u();
                n();
                mj0.e(str);
                mj0.i(oq1Var);
                if (oq1Var.R()) {
                    int j2 = oq1Var.j();
                    Iterator it2 = oq1Var.P().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (!((pq1) it2.next()).V()) {
                                l().L().c("Event filter with no ID. Audience definition ignored. appId, audienceId", pt1.v(str), Integer.valueOf(j2));
                                break;
                            }
                        } else {
                            Iterator it3 = oq1Var.Q().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (!((sq1) it3.next()).P()) {
                                        l().L().c("Property filter with no ID. Audience definition ignored. appId, audienceId", pt1.v(str), Integer.valueOf(j2));
                                        break;
                                    }
                                } else {
                                    Iterator it4 = oq1Var.P().iterator();
                                    while (true) {
                                        if (it4.hasNext()) {
                                            if (!f0(str, j2, (pq1) it4.next())) {
                                                z = false;
                                                break;
                                            }
                                        } else {
                                            z = true;
                                            break;
                                        }
                                    }
                                    if (z) {
                                        Iterator it5 = oq1Var.Q().iterator();
                                        while (it5.hasNext()) {
                                            if (!g0(str, j2, (sq1) it5.next())) {
                                                break;
                                            }
                                        }
                                    }
                                    if (!z) {
                                        u();
                                        n();
                                        mj0.e(str);
                                        SQLiteDatabase B3 = B();
                                        B3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(j2)});
                                        B3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(j2)});
                                    }
                                }
                            }
                        }
                    }
                } else {
                    l().L().b("Audience with no ID. appId", pt1.v(str));
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it6 = list.iterator();
            while (it6.hasNext()) {
                oq1 oq1Var2 = (oq1) it6.next();
                arrayList.add(oq1Var2.R() ? Integer.valueOf(oq1Var2.j()) : null);
            }
            z0(str, arrayList);
            B.setTransactionSuccessful();
            B.endTransaction();
        } catch (Throwable th) {
            B.endTransaction();
            throw th;
        }
    }

    public final void a0(List list) {
        n();
        u();
        mj0.i(list);
        mj0.k(list.size());
        if (u0()) {
            String str = "(" + TextUtils.join(",", list) + ")";
            if (x0("SELECT COUNT(1) FROM queue WHERE rowid IN " + str + " AND retry_count =  2147483647 LIMIT 1", null) > 0) {
                l().L().a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                B().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + str + " AND (retry_count IS NULL OR retry_count < 2147483647)");
            } catch (SQLiteException e) {
                l().G().b("Error incrementing retry count. error", e);
            }
        }
    }

    public final boolean b0(if1 if1Var) {
        mj0.i(if1Var);
        n();
        u();
        String str = if1Var.m;
        mj0.i(str);
        if (F0(str, if1Var.o.n) == null && x0("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", if1Var.n);
        contentValues.put("name", if1Var.o.n);
        T(contentValues, "value", mj0.i(if1Var.o.d()));
        contentValues.put("active", Boolean.valueOf(if1Var.q));
        contentValues.put("trigger_event_name", if1Var.r);
        contentValues.put("trigger_timeout", Long.valueOf(if1Var.t));
        j();
        contentValues.put("timed_out_event", x92.p0(if1Var.s));
        contentValues.put("creation_timestamp", Long.valueOf(if1Var.p));
        j();
        contentValues.put("triggered_event", x92.p0(if1Var.u));
        contentValues.put("triggered_timestamp", Long.valueOf(if1Var.o.o));
        contentValues.put("time_to_live", Long.valueOf(if1Var.v));
        j();
        contentValues.put("expired_event", x92.p0(if1Var.w));
        try {
            if (B().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            l().G().b("Failed to insert/update conditional user property (got -1)", pt1.v(str));
            return true;
        } catch (SQLiteException e) {
            l().G().c("Error storing conditional user property", pt1.v(str), e);
            return true;
        }
    }

    public final boolean c0(hh1 hh1Var, long j2, boolean z) {
        n();
        u();
        mj0.i(hh1Var);
        mj0.e(hh1Var.a);
        byte[] h2 = o().E(hh1Var).h();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", hh1Var.a);
        contentValues.put("name", hh1Var.b);
        contentValues.put("timestamp", Long.valueOf(hh1Var.d));
        contentValues.put("metadata_fingerprint", Long.valueOf(j2));
        contentValues.put("data", h2);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (B().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            l().G().b("Failed to insert raw event (got -1). appId", pt1.v(hh1Var.a));
            return false;
        } catch (SQLiteException e) {
            l().G().c("Error storing raw event. appId", pt1.v(hh1Var.a), e);
            return false;
        }
    }

    public final boolean d0(ps1 ps1Var, boolean z) {
        n();
        u();
        mj0.i(ps1Var);
        mj0.e(ps1Var.D3());
        mj0.l(ps1Var.T0());
        S0();
        long a = b().a();
        if (ps1Var.X2() < a - qf1.M() || ps1Var.X2() > qf1.M() + a) {
            l().L().d("Storing bundle outside of the max uploading time span. appId, now, timestamp", pt1.v(ps1Var.D3()), Long.valueOf(a), Long.valueOf(ps1Var.X2()));
        }
        try {
            byte[] g0 = o().g0(ps1Var.h());
            l().K().b("Saving bundle, size", Integer.valueOf(g0.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", ps1Var.D3());
            contentValues.put("bundle_end_timestamp", Long.valueOf(ps1Var.X2()));
            contentValues.put("data", g0);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (ps1Var.a1()) {
                contentValues.put("retry_count", Integer.valueOf(ps1Var.e2()));
            }
            try {
                if (B().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                l().G().b("Failed to insert bundle (got -1). appId", pt1.v(ps1Var.D3()));
                return false;
            } catch (SQLiteException e) {
                l().G().c("Error storing bundle. appId", pt1.v(ps1Var.D3()), e);
                return false;
            }
        } catch (IOException e2) {
            l().G().c("Data loss. Failed to serialize bundle. appId", pt1.v(ps1Var.D3()), e2);
            return false;
        }
    }

    public final boolean e0(z92 z92Var) {
        mj0.i(z92Var);
        n();
        u();
        if (F0(z92Var.a, z92Var.c) == null) {
            if (x92.J0(z92Var.c)) {
                if (x0("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{z92Var.a}) >= e().q(z92Var.a, si1.I, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(z92Var.c) && x0("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{z92Var.a, z92Var.b}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", z92Var.a);
        contentValues.put("origin", z92Var.b);
        contentValues.put("name", z92Var.c);
        contentValues.put("set_timestamp", Long.valueOf(z92Var.d));
        T(contentValues, "value", z92Var.e);
        try {
            if (B().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            l().G().b("Failed to insert/update user property (got -1). appId", pt1.v(z92Var.a));
            return true;
        } catch (SQLiteException e) {
            l().G().c("Error storing user property. appId", pt1.v(z92Var.a), e);
            return true;
        }
    }

    public final boolean f0(String str, int i2, pq1 pq1Var) {
        u();
        n();
        mj0.e(str);
        mj0.i(pq1Var);
        if (pq1Var.P().isEmpty()) {
            l().L().d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", pt1.v(str), Integer.valueOf(i2), String.valueOf(pq1Var.V() ? Integer.valueOf(pq1Var.L()) : null));
            return false;
        }
        byte[] h2 = pq1Var.h();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", pq1Var.V() ? Integer.valueOf(pq1Var.L()) : null);
        contentValues.put("event_name", pq1Var.P());
        contentValues.put("session_scoped", pq1Var.W() ? Boolean.valueOf(pq1Var.T()) : null);
        contentValues.put("data", h2);
        try {
            if (B().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            l().G().b("Failed to insert event filter (got -1). appId", pt1.v(str));
            return true;
        } catch (SQLiteException e) {
            l().G().c("Error storing event filter. appId", pt1.v(str), e);
            return false;
        }
    }

    public final boolean g0(String str, int i2, sq1 sq1Var) {
        u();
        n();
        mj0.e(str);
        mj0.i(sq1Var);
        if (sq1Var.L().isEmpty()) {
            l().L().d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", pt1.v(str), Integer.valueOf(i2), String.valueOf(sq1Var.P() ? Integer.valueOf(sq1Var.j()) : null));
            return false;
        }
        byte[] h2 = sq1Var.h();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", sq1Var.P() ? Integer.valueOf(sq1Var.j()) : null);
        contentValues.put("property_name", sq1Var.L());
        contentValues.put("session_scoped", sq1Var.Q() ? Boolean.valueOf(sq1Var.O()) : null);
        contentValues.put("data", h2);
        try {
            if (B().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            l().G().b("Failed to insert property filter (got -1). appId", pt1.v(str));
            return false;
        } catch (SQLiteException e) {
            l().G().c("Error storing property filter. appId", pt1.v(str), e);
            return false;
        }
    }

    public final boolean h0(String str, Bundle bundle) {
        n();
        u();
        byte[] h2 = o().E(new hh1(this.a, "", str, "dep", 0L, 0L, bundle)).h();
        l().K().c("Saving default event parameters, appId, data size", g().c(str), Integer.valueOf(h2.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", h2);
        try {
            if (B().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            l().G().b("Failed to insert default event parameters (got -1). appId", pt1.v(str));
            return false;
        } catch (SQLiteException e) {
            l().G().c("Error storing default event parameters. appId", pt1.v(str), e);
            return false;
        }
    }

    public final boolean i0(String str, y72 y72Var) {
        n();
        u();
        mj0.i(y72Var);
        mj0.e(str);
        long a = b().a();
        if (y72Var.n < a - qf1.M() || y72Var.n > qf1.M() + a) {
            l().L().d("Storing trigger URI outside of the max retention time span. appId, now, timestamp", pt1.v(str), Long.valueOf(a), Long.valueOf(y72Var.n));
        }
        l().K().a("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", y72Var.m);
        contentValues.put("source", Integer.valueOf(y72Var.o));
        contentValues.put("timestamp_millis", Long.valueOf(y72Var.n));
        try {
            if (B().insert("trigger_uris", null, contentValues) != -1) {
                return true;
            }
            l().G().b("Failed to insert trigger URI (got -1). appId", pt1.v(str));
            return false;
        } catch (SQLiteException e) {
            l().G().c("Error storing trigger URI. appId", pt1.v(str), e);
            return false;
        }
    }

    public final boolean j0(String str, Long l2, long j2, ks1 ks1Var) {
        n();
        u();
        mj0.i(ks1Var);
        mj0.e(str);
        mj0.i(l2);
        byte[] h2 = ks1Var.h();
        l().K().c("Saving complex main event, appId, data size", g().c(str), Integer.valueOf(h2.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l2);
        contentValues.put("children_to_process", Long.valueOf(j2));
        contentValues.put("main_event", h2);
        try {
            if (B().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            l().G().b("Failed to insert complex main event (got -1). appId", pt1.v(str));
            return false;
        } catch (SQLiteException e) {
            l().G().c("Error storing complex main event. appId", pt1.v(str), e);
            return false;
        }
    }

    public final boolean u0() {
        return a().getDatabasePath("google_app_measurement.db").exists();
    }

    public final long v0(String str) {
        mj0.e(str);
        return G("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final long w0(String str, String str2) {
        long G;
        mj0.e(str);
        mj0.e(str2);
        n();
        u();
        SQLiteDatabase B = B();
        B.beginTransaction();
        long j2 = 0;
        try {
            try {
                G = G("select " + str2 + " from app2 where app_id=?", new String[]{str}, -1L);
                if (G == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", (Integer) 0);
                    contentValues.put("previous_install_count", (Integer) 0);
                    if (B.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        l().G().c("Failed to insert column (got -1). appId", pt1.v(str), str2);
                        return -1L;
                    }
                    G = 0;
                }
            } finally {
                B.endTransaction();
            }
        } catch (SQLiteException e) {
            e = e;
        }
        try {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("app_id", str);
            contentValues2.put(str2, Long.valueOf(1 + G));
            if (B.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                l().G().c("Failed to update column (got 0). appId", pt1.v(str), str2);
                return -1L;
            }
            B.setTransactionSuccessful();
            return G;
        } catch (SQLiteException e2) {
            long j3 = G;
            e = e2;
            j2 = j3;
            l().G().d("Error inserting column. appId", pt1.v(str), str2, e);
            B.endTransaction();
            return j2;
        }
    }

    @Override // androidx.appcompat.view.menu.m82
    public final boolean x() {
        return false;
    }

    public final long x0(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = B().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j2 = rawQuery.getLong(0);
                rawQuery.close();
                return j2;
            } catch (SQLiteException e) {
                l().G().c("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long y() {
        Cursor cursor = null;
        try {
            try {
                cursor = B().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return -1L;
                }
                long j2 = cursor.getLong(0);
                cursor.close();
                return j2;
            } catch (SQLiteException e) {
                l().G().b("Error querying raw events", e);
                if (cursor != null) {
                    cursor.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ab, code lost:
    
        l().G().b("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List y0(String str, String str2, String str3) {
        String str4;
        ArrayList arrayList;
        int i2;
        String str5;
        int i3;
        int i4;
        int i5;
        mj0.e(str);
        n();
        u();
        ArrayList arrayList2 = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                i2 = 3;
                arrayList = new ArrayList(3);
            } catch (SQLiteException e) {
                e = e;
            }
            try {
                arrayList.add(str);
                StringBuilder sb = new StringBuilder("app_id=?");
                if (TextUtils.isEmpty(str2)) {
                    str4 = str2;
                } else {
                    str4 = str2;
                    try {
                        arrayList.add(str4);
                        sb.append(" and origin=?");
                    } catch (SQLiteException e2) {
                        e = e2;
                        l().G().d("(2)Error querying user properties", pt1.v(str), str4, e);
                        List emptyList = Collections.emptyList();
                        if (cursor != null) {
                        }
                        return emptyList;
                    }
                }
                if (!TextUtils.isEmpty(str3)) {
                    arrayList.add(str3 + "*");
                    sb.append(" and name glob ?");
                }
                int i6 = 0;
                int i7 = 1;
                int i8 = 2;
                cursor = B().query("user_attributes", new String[]{"name", "set_timestamp", "value", "origin"}, sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]), null, null, "rowid", "1001");
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return arrayList2;
                }
                while (true) {
                    if (arrayList2.size() >= 1000) {
                        break;
                    }
                    String string = cursor.getString(i6);
                    long j2 = cursor.getLong(i7);
                    try {
                        try {
                            Object M = M(cursor, i8);
                            String string2 = cursor.getString(i2);
                            if (M == null) {
                                try {
                                    l().G().d("(2)Read invalid user property value, ignoring it", pt1.v(str), string2, str3);
                                    str5 = string2;
                                    i3 = i7;
                                    i4 = i8;
                                    i5 = i6;
                                } catch (SQLiteException e3) {
                                    e = e3;
                                    str4 = string2;
                                    l().G().d("(2)Error querying user properties", pt1.v(str), str4, e);
                                    List emptyList2 = Collections.emptyList();
                                    if (cursor != null) {
                                    }
                                    return emptyList2;
                                }
                            } else {
                                try {
                                    str5 = string2;
                                    i3 = i7;
                                    i4 = i8;
                                    i5 = i6;
                                    try {
                                        arrayList2.add(new z92(str, string2, string, j2, M));
                                    } catch (SQLiteException e4) {
                                        e = e4;
                                        str4 = str5;
                                        l().G().d("(2)Error querying user properties", pt1.v(str), str4, e);
                                        List emptyList22 = Collections.emptyList();
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        return emptyList22;
                                    }
                                } catch (SQLiteException e5) {
                                    e = e5;
                                    str5 = string2;
                                    str4 = str5;
                                    l().G().d("(2)Error querying user properties", pt1.v(str), str4, e);
                                    List emptyList222 = Collections.emptyList();
                                    if (cursor != null) {
                                    }
                                    return emptyList222;
                                }
                            }
                            if (!cursor.moveToNext()) {
                                break;
                            }
                            i6 = i5;
                            str4 = str5;
                            i7 = i3;
                            i8 = i4;
                            i2 = 3;
                        } catch (SQLiteException e6) {
                            e = e6;
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                        }
                        throw th;
                    }
                }
                cursor.close();
                return arrayList2;
            } catch (SQLiteException e7) {
                e = e7;
                str4 = str2;
                l().G().d("(2)Error querying user properties", pt1.v(str), str4, e);
                List emptyList2222 = Collections.emptyList();
                if (cursor != null) {
                }
                return emptyList2222;
            }
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long z() {
        return G("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    public final boolean z0(String str, List list) {
        mj0.e(str);
        u();
        n();
        SQLiteDatabase B = B();
        try {
            long x0 = x0("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, e().u(str, si1.H)));
            if (x0 <= max) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                Integer num = (Integer) list.get(i2);
                if (num == null) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String str2 = "(" + TextUtils.join(",", arrayList) + ")";
            StringBuilder sb = new StringBuilder("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb.append(str2);
            sb.append(" order by rowid desc limit -1 offset ?)");
            return B.delete("audience_filter_values", sb.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e) {
            l().G().c("Database error querying filters. appId", pt1.v(str), e);
            return false;
        }
    }
}
