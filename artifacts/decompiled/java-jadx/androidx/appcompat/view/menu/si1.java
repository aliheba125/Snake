package androidx.appcompat.view.menu;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class si1 {
    public static final us1 A0;
    public static final us1 B0;
    public static final us1 C0;
    public static final us1 D0;
    public static final us1 E0;
    public static final us1 F0;
    public static final us1 G0;
    public static final us1 H0;
    public static final us1 I0;
    public static final us1 J0;
    public static final us1 K0;
    public static final us1 L0;
    public static final us1 M;
    public static final us1 M0;
    public static final us1 N;
    public static final us1 N0;
    public static final us1 O;
    public static final us1 O0;
    public static final us1 P;
    public static final us1 P0;
    public static final us1 Q;
    public static final us1 Q0;
    public static final us1 R;
    public static final us1 R0;
    public static final us1 S;
    public static final us1 S0;
    public static final us1 T;
    public static final us1 T0;
    public static final us1 U;
    public static final us1 U0;
    public static final us1 V;
    public static final us1 V0;
    public static final us1 W;
    public static final us1 W0;
    public static final us1 X;
    public static final us1 X0;
    public static final us1 Y;
    public static final us1 Y0;
    public static final us1 Z;
    public static final us1 Z0;
    public static final us1 a0;
    public static final us1 a1;
    public static final us1 b0;
    public static us1 b1;
    public static final us1 c0;
    public static final us1 d0;
    public static final us1 e0;
    public static final us1 f0;
    public static final us1 g0;
    public static final us1 h0;
    public static final us1 i0;
    public static final us1 j0;
    public static final us1 k0;
    public static final us1 l0;
    public static final us1 m0;
    public static final us1 n0;
    public static final us1 o0;
    public static final us1 p0;
    public static final us1 q0;
    public static final us1 r0;
    public static final us1 s0;
    public static final us1 t0;
    public static final us1 u0;
    public static final us1 v0;
    public static final us1 w0;
    public static final us1 x0;
    public static final us1 y0;
    public static final us1 z0;
    public static final List a = Collections.synchronizedList(new ArrayList());
    public static final Set b = Collections.synchronizedSet(new HashSet());
    public static final us1 c = a("measurement.ad_id_cache_time", 10000L, 10000L, new cs1() { // from class: androidx.appcompat.view.menu.wi1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.a());
            return valueOf;
        }
    });
    public static final us1 d = a("measurement.app_uninstalled_additional_ad_id_cache_time", 3600000L, 3600000L, new cs1() { // from class: androidx.appcompat.view.menu.ej1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.w());
            return valueOf;
        }
    });
    public static final us1 e = a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, new cs1() { // from class: androidx.appcompat.view.menu.rk1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.J());
            return valueOf;
        }
    });
    public static final us1 f = a("measurement.config.cache_time", 86400000L, 3600000L, new cs1() { // from class: androidx.appcompat.view.menu.pl1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.y());
            return valueOf;
        }
    });
    public static final us1 g = a("measurement.config.url_scheme", "https", "https", new cs1() { // from class: androidx.appcompat.view.menu.mm1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            String n2;
            n2 = aa2.n();
            return n2;
        }
    });
    public static final us1 h = a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", new cs1() { // from class: androidx.appcompat.view.menu.wn1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            String m2;
            m2 = aa2.m();
            return m2;
        }
    });
    public static final us1 i = a("measurement.upload.max_bundles", 100, 100, new cs1() { // from class: androidx.appcompat.view.menu.oo1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.U());
            return valueOf;
        }
    });
    public static final us1 j = a("measurement.upload.max_batch_size", 65536, 65536, new cs1() { // from class: androidx.appcompat.view.menu.qp1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.i());
            return valueOf;
        }
    });
    public static final us1 k = a("measurement.upload.max_bundle_size", 65536, 65536, new cs1() { // from class: androidx.appcompat.view.menu.kq1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.T());
            return valueOf;
        }
    });
    public static final us1 l = a("measurement.upload.max_events_per_bundle", 1000, 1000, new cs1() { // from class: androidx.appcompat.view.menu.aj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.d());
            return valueOf;
        }
    });
    public static final us1 m = a("measurement.upload.max_events_per_day", 100000, 100000, new cs1() { // from class: androidx.appcompat.view.menu.uj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.e());
            return valueOf;
        }
    });
    public static final us1 n = a("measurement.upload.max_error_events_per_day", 1000, 1000, new cs1() { // from class: androidx.appcompat.view.menu.bl1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.c());
            return valueOf;
        }
    });
    public static final us1 o = a("measurement.upload.max_public_events_per_day", 50000, 50000, new cs1() { // from class: androidx.appcompat.view.menu.am1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.f());
            return valueOf;
        }
    });
    public static final us1 p = a("measurement.upload.max_conversions_per_day", 10000, 10000, new cs1() { // from class: androidx.appcompat.view.menu.en1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.b());
            return valueOf;
        }
    });
    public static final us1 q = a("measurement.upload.max_realtime_events_per_day", 10, 10, new cs1() { // from class: androidx.appcompat.view.menu.co1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.h());
            return valueOf;
        }
    });
    public static final us1 r = a("measurement.store.max_stored_events_per_app", 100000, 100000, new cs1() { // from class: androidx.appcompat.view.menu.qo1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.C());
            return valueOf;
        }
    });
    public static final us1 s = a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", new cs1() { // from class: androidx.appcompat.view.menu.sp1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            String u2;
            u2 = aa2.u();
            return u2;
        }
    });
    public static final us1 t = a("measurement.upload.backoff_period", 43200000L, 43200000L, new cs1() { // from class: androidx.appcompat.view.menu.iq1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.Q());
            return valueOf;
        }
    });
    public static final us1 u = a("measurement.upload.window_interval", 3600000L, 3600000L, new cs1() { // from class: androidx.appcompat.view.menu.ui1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.l());
            return valueOf;
        }
    });
    public static final us1 v = a("measurement.upload.interval", 3600000L, 3600000L, new cs1() { // from class: androidx.appcompat.view.menu.yi1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.S());
            return valueOf;
        }
    });
    public static final us1 w = a("measurement.upload.realtime_upload_interval", 10000L, 10000L, new cs1() { // from class: androidx.appcompat.view.menu.cj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.K());
            return valueOf;
        }
    });
    public static final us1 x = a("measurement.upload.debug_upload_interval", 1000L, 1000L, new cs1() { // from class: androidx.appcompat.view.menu.ij1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.z());
            return valueOf;
        }
    });
    public static final us1 y = a("measurement.upload.minimum_delay", 500L, 500L, new cs1() { // from class: androidx.appcompat.view.menu.gj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.I());
            return valueOf;
        }
    });
    public static final us1 z = a("measurement.alarm_manager.minimum_interval", 60000L, 60000L, new cs1() { // from class: androidx.appcompat.view.menu.mj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.H());
            return valueOf;
        }
    });
    public static final us1 A = a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, new cs1() { // from class: androidx.appcompat.view.menu.kj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.N());
            return valueOf;
        }
    });
    public static final us1 B = a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, new cs1() { // from class: androidx.appcompat.view.menu.qj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.L());
            return valueOf;
        }
    });
    public static final us1 C = a("measurement.upload.initial_upload_delay_time", 15000L, 15000L, new cs1() { // from class: androidx.appcompat.view.menu.oj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.R());
            return valueOf;
        }
    });
    public static final us1 D = a("measurement.upload.retry_time", 1800000L, 1800000L, new cs1() { // from class: androidx.appcompat.view.menu.sj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.k());
            return valueOf;
        }
    });
    public static final us1 E = a("measurement.upload.retry_count", 6, 6, new cs1() { // from class: androidx.appcompat.view.menu.yj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.j());
            return valueOf;
        }
    });
    public static final us1 F = a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, new cs1() { // from class: androidx.appcompat.view.menu.wj1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.g());
            return valueOf;
        }
    });
    public static final us1 G = a("measurement.lifetimevalue.max_currency_tracked", 4, 4, new cs1() { // from class: androidx.appcompat.view.menu.ak1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.A());
            return valueOf;
        }
    });
    public static final us1 H = a("measurement.audience.filter_result_max_count", 200, 200, new cs1() { // from class: androidx.appcompat.view.menu.vk1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Integer valueOf;
            valueOf = Integer.valueOf((int) aa2.E());
            return valueOf;
        }
    });
    public static final us1 I = a("measurement.upload.max_public_user_properties", 25, 25, null);
    public static final us1 J = a("measurement.upload.max_event_name_cardinality", 500, 500, null);
    public static final us1 K = a("measurement.upload.max_public_event_params", 25, 25, null);
    public static final us1 L = a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, new cs1() { // from class: androidx.appcompat.view.menu.tk1
        @Override // androidx.appcompat.view.menu.cs1
        public final Object a() {
            Long valueOf;
            valueOf = Long.valueOf(aa2.M());
            return valueOf;
        }
    });

    static {
        Boolean bool = Boolean.FALSE;
        M = a("measurement.test.boolean_flag", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.zk1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf;
                valueOf = Boolean.valueOf(mc2.e());
                return valueOf;
            }
        });
        N = a("measurement.test.string_flag", "---", "---", new cs1() { // from class: androidx.appcompat.view.menu.xk1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                String d2;
                d2 = mc2.d();
                return d2;
            }
        });
        O = a("measurement.test.long_flag", -1L, -1L, new cs1() { // from class: androidx.appcompat.view.menu.dl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Long valueOf;
                valueOf = Long.valueOf(mc2.c());
                return valueOf;
            }
        });
        P = a("measurement.test.int_flag", -2, -2, new cs1() { // from class: androidx.appcompat.view.menu.hl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Integer valueOf;
                valueOf = Integer.valueOf((int) mc2.b());
                return valueOf;
            }
        });
        Double valueOf = Double.valueOf(-3.0d);
        Q = a("measurement.test.double_flag", valueOf, valueOf, new cs1() { // from class: androidx.appcompat.view.menu.fl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Double valueOf2;
                valueOf2 = Double.valueOf(mc2.a());
                return valueOf2;
            }
        });
        R = a("measurement.experiment.max_ids", 50, 50, new cs1() { // from class: androidx.appcompat.view.menu.ll1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Integer valueOf2;
                valueOf2 = Integer.valueOf((int) aa2.D());
                return valueOf2;
            }
        });
        S = a("measurement.upload.max_item_scoped_custom_parameters", 27, 27, new cs1() { // from class: androidx.appcompat.view.menu.jl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Integer valueOf2;
                valueOf2 = Integer.valueOf((int) aa2.F());
                return valueOf2;
            }
        });
        T = a("measurement.upload.max_event_parameter_value_length", 100, 100, new cs1() { // from class: androidx.appcompat.view.menu.nl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Integer valueOf2;
                valueOf2 = Integer.valueOf((int) aa2.B());
                return valueOf2;
            }
        });
        U = a("measurement.max_bundles_per_iteration", 100, 100, new cs1() { // from class: androidx.appcompat.view.menu.tl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Integer valueOf2;
                valueOf2 = Integer.valueOf((int) aa2.x());
                return valueOf2;
            }
        });
        V = a("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, new cs1() { // from class: androidx.appcompat.view.menu.rl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Long valueOf2;
                valueOf2 = Long.valueOf(aa2.O());
                return valueOf2;
            }
        });
        W = a("measurement.redaction.app_instance_id.ttl", 7200000L, 7200000L, new cs1() { // from class: androidx.appcompat.view.menu.xl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Long valueOf2;
                valueOf2 = Long.valueOf(aa2.P());
                return valueOf2;
            }
        });
        X = a("measurement.rb.attribution.client.min_ad_services_version", 7, 7, new cs1() { // from class: androidx.appcompat.view.menu.vl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Integer valueOf2;
                valueOf2 = Integer.valueOf((int) aa2.G());
                return valueOf2;
            }
        });
        Y = a("measurement.rb.attribution.uri_scheme", "https", "https", new cs1() { // from class: androidx.appcompat.view.menu.zl1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                String t2;
                t2 = aa2.t();
                return t2;
            }
        });
        Z = a("measurement.rb.attribution.uri_authority", "google-analytics.com", "google-analytics.com", new cs1() { // from class: androidx.appcompat.view.menu.em1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                String q2;
                q2 = aa2.q();
                return q2;
            }
        });
        a0 = a("measurement.rb.attribution.uri_path", "privacy-sandbox/register-app-conversion", "privacy-sandbox/register-app-conversion", new cs1() { // from class: androidx.appcompat.view.menu.cm1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                String r2;
                r2 = aa2.r();
                return r2;
            }
        });
        b0 = a("measurement.rb.attribution.app_allowlist", "com.labpixies.flood,", "com.labpixies.flood,", new cs1() { // from class: androidx.appcompat.view.menu.im1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                String p2;
                p2 = aa2.p();
                return p2;
            }
        });
        c0 = a("measurement.rb.attribution.user_properties", "_npa,npa", "_npa,npa", new cs1() { // from class: androidx.appcompat.view.menu.gm1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                String v2;
                v2 = aa2.v();
                return v2;
            }
        });
        d0 = a("measurement.rb.attribution.event_params", "value|currency", "value|currency", new cs1() { // from class: androidx.appcompat.view.menu.km1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                String o2;
                o2 = aa2.o();
                return o2;
            }
        });
        e0 = a("measurement.rb.attribution.query_parameters_to_remove", "", "", new cs1() { // from class: androidx.appcompat.view.menu.cn1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                String s2;
                s2 = aa2.s();
                return s2;
            }
        });
        Boolean bool2 = Boolean.TRUE;
        f0 = a("measurement.collection.log_event_and_bundle_v2", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.om1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(rc2.a());
                return valueOf2;
            }
        });
        g0 = a("measurement.quality.checksum", bool, bool, null);
        h0 = a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.gn1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(gb2.c());
                return valueOf2;
            }
        });
        i0 = a("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.kn1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(gb2.b());
                return valueOf2;
            }
        });
        j0 = a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.in1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(gb2.d());
                return valueOf2;
            }
        });
        k0 = a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.on1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(ce2.a());
                return valueOf2;
            }
        });
        l0 = a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.nn1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(zb2.a());
                return valueOf2;
            }
        });
        m0 = a("measurement.lifecycle.app_in_background_parameter", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.sn1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(ec2.a());
                return valueOf2;
            }
        });
        n0 = a("measurement.integration.disable_firebase_instance_id", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.qn1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(xd2.b());
                return valueOf2;
            }
        });
        o0 = a("measurement.collection.service.update_with_analytics_fix", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.un1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(de2.a());
                return valueOf2;
            }
        });
        p0 = a("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.ao1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(ta2.b());
                return valueOf2;
            }
        });
        q0 = a("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.yn1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(mb2.b());
                return valueOf2;
            }
        });
        r0 = a("measurement.service.storage_consent_support_version", 203600, 203600, new cs1() { // from class: androidx.appcompat.view.menu.bo1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Integer valueOf2;
                valueOf2 = Integer.valueOf((int) ha2.a());
                return valueOf2;
            }
        });
        s0 = a("measurement.client.click_identifier_control.dev", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.eo1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(h92.a());
                return valueOf2;
            }
        });
        t0 = a("measurement.service.click_identifier_control", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.do1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(y92.a());
                return valueOf2;
            }
        });
        u0 = a("measurement.service.store_null_safelist", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.ho1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(oa2.b());
                return valueOf2;
            }
        });
        v0 = a("measurement.service.store_safelist", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.fo1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(oa2.c());
                return valueOf2;
            }
        });
        w0 = a("measurement.collection.enable_session_stitching_token.first_open_fix", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.ko1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(ed2.c());
                return valueOf2;
            }
        });
        x0 = a("measurement.collection.enable_session_stitching_token.client.dev", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.io1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(ed2.b());
                return valueOf2;
            }
        });
        y0 = a("measurement.session_stitching_token_enabled", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.mo1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(ed2.d());
                return valueOf2;
            }
        });
        z0 = a("measurement.sgtm.client.dev", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.so1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(wd2.b());
                return valueOf2;
            }
        });
        A0 = a("measurement.sgtm.service", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.fp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(wd2.c());
                return valueOf2;
            }
        });
        B0 = a("measurement.redaction.retain_major_os_version", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.uo1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(xc2.a());
                return valueOf2;
            }
        });
        C0 = a("measurement.redaction.scion_payload_generator", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.ip1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(xc2.b());
                return valueOf2;
            }
        });
        D0 = a("measurement.sessionid.enable_client_session_id", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.hp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(dd2.b());
                return valueOf2;
            }
        });
        E0 = a("measurement.sfmc.client", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.mp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(kd2.b());
                return valueOf2;
            }
        });
        F0 = a("measurement.sfmc.service", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.kp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(kd2.c());
                return valueOf2;
            }
        });
        G0 = a("measurement.gmscore_feature_tracking", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.op1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(sb2.b());
                return valueOf2;
            }
        });
        H0 = a("measurement.fix_health_monitor_stack_trace", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.np1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(hb2.b());
                return valueOf2;
            }
        });
        I0 = a("measurement.item_scoped_custom_parameters.client", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.pp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(yb2.b());
                return valueOf2;
            }
        });
        J0 = a("measurement.item_scoped_custom_parameters.service", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.rp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(yb2.c());
                return valueOf2;
            }
        });
        K0 = a("measurement.remove_app_background.client", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.vp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(yc2.b());
                return valueOf2;
            }
        });
        L0 = a("measurement.rb.attribution.service", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.tp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(sc2.d());
                return valueOf2;
            }
        });
        M0 = a("measurement.rb.attribution.client2", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.yp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(sc2.b());
                return valueOf2;
            }
        });
        N0 = a("measurement.rb.attribution.uuid_generation", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.wp1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(sc2.f());
                return valueOf2;
            }
        });
        O0 = a("measurement.rb.attribution.enable_trigger_redaction", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.cq1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(sc2.e());
                return valueOf2;
            }
        });
        P0 = a("measurement.rb.attribution.followup1.service", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.aq1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(sc2.c());
                return valueOf2;
            }
        });
        Q0 = a("measurement.client.sessions.enable_fix_background_engagement", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.gq1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                return Boolean.valueOf(jd2.a());
            }
        });
        R0 = a("measurement.client.ad_id_consent_fix", bool2, bool2, new cs1() { // from class: androidx.appcompat.view.menu.eq1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                return Boolean.valueOf(ua2.b());
            }
        });
        S0 = a("measurement.dma_consent.client", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.uq1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(na2.b());
                return valueOf2;
            }
        });
        T0 = a("measurement.dma_consent.service", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.mq1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(na2.d());
                return valueOf2;
            }
        });
        U0 = a("measurement.dma_consent.client_bow_check", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.xq1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(na2.c());
                return valueOf2;
            }
        });
        V0 = a("measurement.dma_consent.service_gcs_v2", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.vq1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(na2.e());
                return valueOf2;
            }
        });
        W0 = a("measurement.dma_consent.service_npa_remote_default", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.kr1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(na2.f());
                return valueOf2;
            }
        });
        X0 = a("measurement.dma_consent.service_split_batch_on_consent", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.zq1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(na2.g());
                return valueOf2;
            }
        });
        Y0 = a("measurement.service.deferred_first_open", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.vr1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(ia2.b());
                return valueOf2;
            }
        });
        Z0 = a("measurement.gbraid_campaign.gbraid.client.dev", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.mr1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(nb2.b());
                return valueOf2;
            }
        });
        a1 = a("measurement.gbraid_campaign.gbraid.service", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.yr1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(nb2.c());
                return valueOf2;
            }
        });
        b1 = a("measurement.increase_param_lengths", bool, bool, new cs1() { // from class: androidx.appcompat.view.menu.wr1
            @Override // androidx.appcompat.view.menu.cs1
            public final Object a() {
                Boolean valueOf2;
                valueOf2 = Boolean.valueOf(tb2.b());
                return valueOf2;
            }
        });
    }

    public static us1 a(String str, Object obj, Object obj2, cs1 cs1Var) {
        us1 us1Var = new us1(str, obj, obj2, cs1Var);
        a.add(us1Var);
        return us1Var;
    }

    public static Map c(Context context) {
        du1 a2 = du1.a(context.getContentResolver(), iv1.a("com.google.android.gms.measurement"), new Runnable() { // from class: androidx.appcompat.view.menu.qi1
            @Override // java.lang.Runnable
            public final void run() {
                ov1.m();
            }
        });
        return a2 == null ? Collections.emptyMap() : a2.b();
    }
}
