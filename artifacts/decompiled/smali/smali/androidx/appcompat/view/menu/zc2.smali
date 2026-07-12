.class public final Landroidx/appcompat/view/menu/zc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/wc2;


# static fields
.field public static final a:Landroidx/appcompat/view/menu/ov1;

.field public static final b:Landroidx/appcompat/view/menu/ov1;

.field public static final c:Landroidx/appcompat/view/menu/ov1;

.field public static final d:Landroidx/appcompat/view/menu/ov1;

.field public static final e:Landroidx/appcompat/view/menu/ov1;

.field public static final f:Landroidx/appcompat/view/menu/ov1;

.field public static final g:Landroidx/appcompat/view/menu/ov1;

.field public static final h:Landroidx/appcompat/view/menu/ov1;

.field public static final i:Landroidx/appcompat/view/menu/ov1;

.field public static final j:Landroidx/appcompat/view/menu/ov1;

.field public static final k:Landroidx/appcompat/view/menu/ov1;

.field public static final l:Landroidx/appcompat/view/menu/ov1;

.field public static final m:Landroidx/appcompat/view/menu/ov1;

.field public static final n:Landroidx/appcompat/view/menu/ov1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/ew1;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Landroidx/appcompat/view/menu/iv1;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ew1;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ew1;->f()Landroidx/appcompat/view/menu/ew1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ew1;->e()Landroidx/appcompat/view/menu/ew1;

    move-result-object v0

    const-string v1, "measurement.redaction.app_instance_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->a:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.client_ephemeral_aiid_generation"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->b:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.config_redacted_fields"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->c:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.device_info"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->d:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.e_tag"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->e:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.enhanced_uid"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->f:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.populate_ephemeral_app_instance_id"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->g:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.google_signals"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->h:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.no_aiid_in_config_request"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->i:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.retain_major_os_version"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->j:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.scion_payload_generator"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->k:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.upload_redacted_fields"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->l:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.upload_subdomain_override"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/zc2;->m:Landroidx/appcompat/view/menu/ov1;

    const-string v1, "measurement.redaction.user_id"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ew1;->d(Ljava/lang/String;Z)Landroidx/appcompat/view/menu/ov1;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/zc2;->n:Landroidx/appcompat/view/menu/ov1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/zc2;->j:Landroidx/appcompat/view/menu/ov1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ov1;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/zc2;->k:Landroidx/appcompat/view/menu/ov1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ov1;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
